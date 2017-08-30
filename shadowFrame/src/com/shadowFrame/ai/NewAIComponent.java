package com.shadowFrame.ai;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.shadowFrame.ai.action.IAIActionParam;
import com.shadowFrame.ai.event.AIAOIEventParam;
import com.shadowFrame.ai.event.AIAOIEventType;
import com.shadowFrame.ai.event.IAIAOIEvent;
import com.shadowFrame.ai.event.IAIAOIEventParam;
import com.shadowFrame.ai.hatred.AIHatredMeter;
import com.shadowFrame.ai.strategy.AICommonStrategy;
import com.shadowFrame.ai.strategy.AIStopTheWorldStrategy;
import com.shadowFrame.ai.strategy.AIStrategyParam;
import com.shadowFrame.ai.strategy.IAIStrategyParam;
import com.shadowFrame.ai.tendency.IAITendencyParam;

public class NewAIComponent {

	private Map<PhaseEnum, List<IAIStrategyParam>> StrategyData;
	private Map<PhaseEnum, Double> phaseHp;

	private List<IAIAOIEventParam> aoiEventList;
	private AIHatredMeter hatredMeter;

	private byte[] phaseState;
	private PhaseEnum phase;

	IAIStrategyParam currentStrategy;
	IAITendencyParam currentTendency;
	IAIActionParam	currentAction;

	private DmcSceneObject self;
	private boolean valid;
	private long spawnTime;

	public NewAIComponent(DmcSceneObject self, boolean isAiValid) {
		this.self = self;
		this.valid = isAiValid;

		phase = PhaseEnum.OnePhase;
		phaseState = new byte[2];

		hatredMeter = new AIHatredMeter(self);
		spawnTime = this.self.getSpawnTime() + 10000;

		StrategyData = new HashMap<PhaseEnum, List<IAIStrategyParam>>();
		phaseHp = new HashMap<PhaseEnum, Double>();

		aoiEventList = new ArrayList<IAIAOIEventParam>();
	}

	public void setCommonAIData(List<IAITendencyParam> tendencyData) {
		setAIData(PhaseEnum.OnePhase, 1.0, tendencyData);
	}

	public void setAIData(PhaseEnum phase, double phaseHpPersent, List<IAITendencyParam> tendencyData) {
		List<IAIStrategyParam> strategyList = new ArrayList<IAIStrategyParam>();
		StrategyData.put(phase, strategyList);

		IAIStrategyParam commonStrategy = new AIStrategyParam(new AICommonStrategy(), null, null);
		strategyList.add(commonStrategy);
		for (IAITendencyParam tendency : tendencyData) {
			if (tendency.getEnterTendencyEvent().getEventType().equals(AIAOIEventType.SwitchPhase)) {
				IAIStrategyParam stopWorldStrategy = new AIStrategyParam(new AIStopTheWorldStrategy(),
						tendency.getEnterTendencyThreshold(), tendency.getEnterTendencyEvent());
				stopWorldStrategy.addTendency(tendency);
				strategyList.add(stopWorldStrategy);
				continue;
			}
			commonStrategy.addTendency(tendency);
		}

		StrategyData.put(phase, strategyList);
		phaseHp.put(phase, phaseHpPersent);
	}

	public void onAoiActionEvent(IAIAOIEvent event) {
		hatredMeter.onAoiEvent(event);
		aoiEventList.add(event.toEventParam(self));
	}

	public void tick(long current, long interval) {
//		if (!valid || self.getRoleStateManager().getCurActionState().equals(ActionState.DEAD) || Globals.getTimeService().now() < spawnTime) {
//			return;
//		}
		aoiEventList.add(new AIAOIEventParam(AIAOIEventType.Time, current, AISceneObjectCampType.self));
		perception();
	}

	private void perception() {
		
		//获得策略
		IAIStrategyParam nextStrategy = null;
		for (IAIStrategyParam strategyParam : StrategyData.get(phase)) {
			if (!strategyParam.getStrategy().equals(currentStrategy)) {
				if (AITransfer.transfer(strategyParam.getEnterStrategyThreshold(), strategyParam.getEnterStrategyEvent(), self,aoiEventList)) {
					nextStrategy = strategyParam;
					break;
				}
			}
		}
		if (nextStrategy != null) {
			currentStrategy = nextStrategy;
			if (currentTendency != null) {
				currentTendency.getTendency().stop();
				currentTendency = null;
			}
			if(currentAction != null){
				currentAction.getAction().stop();
				currentAction = null;
			}
		}
		
		//获得行为
		if (currentTendency == null) {
			for (IAITendencyParam tendencyParam : currentStrategy.getTendencyList()) {
				if(tendencyParam.getTendency().CanEnterTendency(self, aoiEventList, tendencyParam)){
					currentTendency = tendencyParam;
					break;
				}
			}
		}
		
		//获得动作
		currentAction = currentTendency.getTendency().getNextAction(self, aoiEventList, currentTendency,currentAction);
		if (currentAction == null) {
			currentTendency = null;
		} else {
			currentAction.getAction().doAction(self, currentAction);
		}
	}
}
