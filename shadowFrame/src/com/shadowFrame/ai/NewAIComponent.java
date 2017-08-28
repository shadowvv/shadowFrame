package com.game2sky.prilib.core.socket.logic.battle.newAi;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.game2sky.prilib.core.socket.logic.battle.ai.event.AIEventTypeEnum;
import com.game2sky.prilib.core.socket.logic.battle.newAi.action.IAIActionParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIAOIEventParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIAOIEventType;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIAOIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIAOIEventParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.hatred.AIHatredMeter;
import com.game2sky.prilib.core.socket.logic.battle.newAi.strategy.AICommonStrategy;
import com.game2sky.prilib.core.socket.logic.battle.newAi.strategy.AIStopTheWorldStrategy;
import com.game2sky.prilib.core.socket.logic.battle.newAi.strategy.AIStrategyParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.strategy.IAIStrategyParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.tendency.IAITendencyParam;
import com.game2sky.prilib.core.socket.logic.human.state.ActionState;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;
import com.game2sky.prilib.core.socket.logic.scene.unit.monster.PhaseEnum;
import com.game2sky.publib.Globals;

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
		spawnTime = this.self.getSpawnTime() + Globals.getTimeService().now();

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
			if (tendency.getEnterTendencyEvent().getEventType().equals(AIEventTypeEnum.ENTERPHASE)) {
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
		if (!valid || self.getRoleStateManager().getCurActionState().equals(ActionState.DEAD) || Globals.getTimeService().now() < spawnTime) {
			return;
		}
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
