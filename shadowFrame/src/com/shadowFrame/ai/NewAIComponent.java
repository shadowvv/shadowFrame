package com.shadowFrame.ai;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.shadowFrame.ai.action.AIActionParam;
import com.shadowFrame.ai.event.AIEvent;
import com.shadowFrame.ai.event.AIEventEnum;
import com.shadowFrame.ai.event.AOIEventService;
import com.shadowFrame.ai.hatred.AIHatredMeter;
import com.shadowFrame.ai.phase.AIPhaseEnum;
import com.shadowFrame.ai.phase.AIPhaseParam;
import com.shadowFrame.ai.strategy.AIStrategyParam;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;
import com.shadowFrame.ai.tendency.AITendencyParam;

/**
 * ai模块
 * 
 * @author shadow
 *
 */
public class NewAIComponent {

	/**
	 * 阶段策略数据
	 */
	private Map<AIPhaseEnum, List<AIStrategyParam>> StrategyData;
	/**
	 * 阶段参数
	 */
	private List<AIPhaseParam> phaseData;

	/**
	 * ai事件收集列表
	 */
	private List<AIEvent> aiEvents;
	/**
	 * ai仇恨管理器
	 */
	private AIHatredMeter hatredMeter;
	
	/**
	 * 当前阶段
	 */
	private AIPhaseEnum currentPhase;
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
	private AIActionParam currentAction;
	
	/**
	 * ai结附的场景物体
	 */
	private SceneObject self;
	/**
	 * ai是否起效
	 */
	private boolean valid;
	/**
	 * ai起效时间
	 */
	private long aiValidTime;
	/**
	 * 时候可以获得下一个行为
	 */
	private boolean canGetNextTendency;
	
	/**
	 * AI首次tick
	 */
	private boolean firstTick;
	/**
	 * AI tick间隔
	 */
	private int tickTime;

	/**
	 * 
	 * @param self ai结附的场景物体
	 * @param isAiValid ai是否起效
	 */
	public NewAIComponent(SceneObject self, boolean isAiValid) {
		this.self = self;
		this.valid = isAiValid;
		
		canGetNextTendency = true;

		hatredMeter = new AIHatredMeter();
		aiValidTime = this.self.getSpawnTime() + System.currentTimeMillis();

		StrategyData = new HashMap<AIPhaseEnum, List<AIStrategyParam>>();
		phaseData = new ArrayList<AIPhaseParam>();
		
		currentPhase = AIPhaseEnum.OnePhase;

		aiEvents = new ArrayList<AIEvent>();
		firstTick = true;
		tickTime = 0;
	}

	/**
	 * 设置ai数据（只设置一阶段）
	 * @param strategyData ai数据
	 */
	public void setCommonAIData(List<AIStrategyParam> strategyData) {
		setAIData(new AIPhaseParam(AIPhaseEnum.OnePhase.getId(), null, null), strategyData);
	}

	/**
	 * 设置ai阶段数据
	 * @param phase 阶段
	 * @param phaseHpPersent 阶段切换血量
	 * @param strategyData ai数据
	 */
	public void setAIData(AIPhaseParam phase, List<AIStrategyParam> strategyData) {
		phaseData.add(phase);
		StrategyData.put(phase.getPhase(), strategyData); 
	}
	
	/**
	 * 设置ai起效
	 * @param valid
	 */
	public void setValid(boolean valid) {
		this.valid = valid;
	}

	/**
	 * 发生事件
	 * @param event 事件
	 */
	public void onAoiActionEvent(AIEvent event) {
		if (!valid || System.currentTimeMillis() < aiValidTime) {
			return;
		}
		hatredMeter.onAoiEvent(event);
		aiEvents.add(event);
	}
	
	/**
	 * 
	 * @return 仇恨列表数量
	 */
	public int getHatredListSize() {
		return hatredMeter.getSize();
	}
	
	/**
	 * 
	 * @return 事件列表
	 */
	public List<AIEvent> getAIEvents() {
		return aiEvents;
	}

	/**
	 * 
	 * @return 仇恨列表里的所有场景物体
	 */
	public List<SceneObject> getAllHatredObjects() {
		return hatredMeter.getAllHatredObjects();
	}
	
	/**
	 * 
	 * @return 仇恨值最大的目标
	 */
	public SceneObject getCommonTarget() {
		return hatredMeter.getCommonTarget();
	}
	
	/**
	 * 
	 * @return 当前策略
	 */
	public AIStrategyParam getCurrentStrategy() {
		return currentStrategy;
	}
	
	/**
	 * 
	 * @return 当前行为
	 */
	public AITendencyParam getCurrentTendency() {
		return currentTendency;
	}
	
	/**
	 * 
	 * @return 当前动作
	 */
	public AIActionParam getCurrentAction() {
		return currentAction;
	}

	/**
	 * 心跳
	 * @param current 当前事件
	 */
	public void tick(long current) {
		tickTime++;
		if (!valid || System.currentTimeMillis() < aiValidTime) {
			return;
		}
		if(firstTick){
			firstTick = false;
			//设置AI规则后，重新发起AI事件
			aiEvents.add(AIEvent.CREATE);
			AOIEventService.onSceneObjectMove(self, self.getPos(), self.getPos(), self.getDir());
		}
		if(tickTime > 10){
			tickTime = 0;
			perception();
		}
	}

	private void perception() {
		
		if(StrategyData.size() == 0){
			aiEvents.clear();
			return;
		}
		
		if(isSwitchPhase()){
			currentStrategy = null;
		}
		
		if(currentStrategy == null || currentStrategy.isOver(self,aiEvents)){
			for (AIStrategyParam strategyParam : StrategyData.get(currentPhase)) {
				if(strategyParam.CanEnterStrategy(self)){
					currentStrategy = strategyParam;
					currentStrategy.reset();
					canGetNextTendency = true;
					break;
				}
			}
		}

		if(currentTendency == null || currentTendency.isOver(self,aiEvents)){
			canGetNextTendency = true;
		}
		
		if(canGetNextTendency){
			if(currentAction != null){
				currentAction.stop(self);
			}
			AITendencyParam nextTendency = null;
			nextTendency = currentStrategy.getTendency(self);
			if(nextTendency != null){
				currentTendency = nextTendency;
				currentTendency.reset();
				canGetNextTendency = false;
				currentAction = null;
			}
		}

		if(currentAction == null || currentAction.isOver(self)){
			AIActionParam nextAction = currentTendency.getNextAction(self,currentAction);
			if (nextAction == null) {
				canGetNextTendency = true;
				return;
			} else {
				currentAction = nextAction;
				currentAction.reset();
			}
		}
		
		if(currentAction.isInterrupt(self)){
			currentAction.stop(self);
			canGetNextTendency = true;
			return;
		}
		
		if(currentAction != null){
			currentAction.doAction(self);
			AIActionParam middleAction = currentAction.getMiddleAction(self);
			if(middleAction != null){
				middleAction.doAction(self);
			}
		}

		aiEvents.clear();
		System.out.println("***************"+currentStrategy.getName()+"	"+currentTendency.getName()+"	"+currentAction.getName());
	}
	
	private boolean isSwitchPhase(){
		for (AIPhaseParam phase : phaseData) {
			if(phase.CanEnterPhase(self)){
				currentPhase = phase.getPhase();
				phase.reset();
				aiEvents.clear();
				aiEvents.add(new AIEvent(AIEventEnum.SwitchPhase.getId(), currentPhase.getId()+"", AITargetObjectCampEnum.self.getId(), self));
				return true;				
			}
		}
		return false;
	}

	/**
	 * 
	 * 
	 * @return ai是否生效
	 */
	public boolean isValid() {
		return valid;
	}

}
