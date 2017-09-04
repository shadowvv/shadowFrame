package com.game2sky.prilib.core.socket.logic.battle.newAi;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.game2sky.prilib.core.socket.logic.battle.newAi.action.AOIActionParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEventEnum;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.hatred.AIHatredMeter;
import com.game2sky.prilib.core.socket.logic.battle.newAi.strategy.AIStrategyEnum;
import com.game2sky.prilib.core.socket.logic.battle.newAi.strategy.AIStrategyParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.target.AITargetObjectCampEnum;
import com.game2sky.prilib.core.socket.logic.battle.newAi.tendency.AITendencyParam;
import com.game2sky.prilib.core.socket.logic.human.state.ActionState;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;
import com.game2sky.prilib.core.socket.logic.scene.unit.monster.PhaseEnum;
import com.game2sky.publib.Globals;

/**
 * ai模块
 * @author shadow
 *
 */
public class NewAIComponent {

	/**
	 * 阶段策略数据
	 */
	private Map<PhaseEnum, List<AIStrategyParam>> StrategyData;
	/**
	 * 阶段切换血量百分比
	 */
	private Map<PhaseEnum, Double> phaseHp;

	/**
	 * ai事件收集列表
	 */
	private List<IAIEvent> aoiEventList;
	/**
	 * ai仇恨管理器
	 */
	private AIHatredMeter hatredMeter;
	/**
	 * 阶段切换标记
	 */
	private byte[] phaseState;
	
	/**
	 * 当前阶段
	 */
	private PhaseEnum currentphase;
	/**
	 * 当前策略
	 */
	private AIStrategyParam currentStrategy;
	/**
	 * 当前行为
	 */
	private AITendencyParam currentTendency;
	/**
	 * 当前动作
	 */
	private AOIActionParam currentAction;
	
	/**
	 * ai结附的场景物体
	 */
	private DmcSceneObject self;
	/**
	 * ai是否起效
	 */
	private boolean valid;
	/**
	 * ai起效时间
	 */
	private long aiValidTime;

	/**
	 * 
	 * @param self ai结附的场景物体
	 * @param isAiValid ai是否起效
	 */
	public NewAIComponent(DmcSceneObject self, boolean isAiValid) {
		this.self = self;
		this.valid = isAiValid;

		currentphase = PhaseEnum.OnePhase;
		phaseState = new byte[2];

		hatredMeter = new AIHatredMeter();
		aiValidTime = this.self.getSpawnTime() + Globals.getTimeService().now();

		StrategyData = new HashMap<PhaseEnum, List<AIStrategyParam>>();
		phaseHp = new HashMap<PhaseEnum, Double>();

		aoiEventList = new ArrayList<IAIEvent>();
	}

	/**
	 * 设置ai数据（默认只有一个阶段）
	 * @param tendencyData ai数据
	 */
	public void setCommonAIData(List<AITendencyParam> tendencyData) {
		setAIData(PhaseEnum.OnePhase, 1.0, tendencyData);
	}

	/**
	 * 设置ai阶段数据
	 * @param phase 阶段
	 * @param phaseHpPersent 阶段切换血量
	 * @param tendencyData ai数据
	 */
	public void setAIData(PhaseEnum phase, double phaseHpPersent, List<AITendencyParam> tendencyData) {
		List<AIStrategyParam> strategyList = new ArrayList<AIStrategyParam>();
		StrategyData.put(phase, strategyList);

		AIStrategyParam commonStrategy = new AIStrategyParam(AIStrategyEnum.CommonStrategy.getId(), null, null);
		strategyList.add(commonStrategy);
		for (AITendencyParam tendency : tendencyData) {
			if (tendency.getEnterTendencyEvent().getEventType().equals(AIEventEnum.SwitchPhase)) {
				AIStrategyParam stopWorldStrategy = new AIStrategyParam(AIStrategyEnum.StopTheWorldStrategy.getId(),tendency.getEnterTendencyThreshold(), tendency.getEnterTendencyEvent());
				stopWorldStrategy.addTendency(tendency);
				strategyList.add(stopWorldStrategy);
				continue;
			}
			commonStrategy.addTendency(tendency);
		}

		StrategyData.put(phase, strategyList);
		phaseHp.put(phase, phaseHpPersent);
	}

	/**
	 * 
	 * @param event 事件
	 */
	public void onAoiActionEvent(IAIEvent event) {
		hatredMeter.onAoiEvent(event);
		aoiEventList.add(event);
	}

	/**
	 * 心跳
	 * @param current 当前事件
	 * @param interval 与上次心跳的间隔时间
	 */
	public void tick(long current, long interval) {
		if (!valid || self.getRoleStateManager().getCurActionState().equals(ActionState.DEAD) || Globals.getTimeService().now() < aiValidTime) {
			return;
		}
		aoiEventList.add(new AIEvent(AIEventEnum.Time, current, AITargetObjectCampEnum.self));
		perception();
	}

	private void perception() {
		
		//获得策略
		AIStrategyParam nextStrategy = null;
		for (AIStrategyParam strategyParam : StrategyData.get(currentphase)) {
			if (!strategyParam.equals(currentStrategy)) {
				if(strategyParam.CanEnterStrategy(self, aoiEventList)){
					nextStrategy = strategyParam;
					break;
				}
			}
		}
		if (nextStrategy != null) {
			currentStrategy = nextStrategy;
			if (currentTendency != null) {
				currentTendency.stop();
				currentTendency = null;
			}
			if(currentAction != null){
				currentAction.stop();
				currentAction = null;
			}
		}
		
		//获得行为
		if (currentTendency == null) {
			currentTendency = currentStrategy.getTendency(self, aoiEventList);
		}
		if(currentTendency == null){
			return;
		}
		
		//获得动作
		currentAction = currentTendency.getNextAction(self, aoiEventList,currentAction);
		if (currentAction == null) {
			currentTendency = null;
		} else {
			currentAction.doAction(self);
		}
	}
}