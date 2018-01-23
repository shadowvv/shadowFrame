package com.shadowFrame.ai;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import com.shadowFrame.ai.action.AIActionParam;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.event.AIEventEnum;
import com.shadowFrame.ai.condition.event.AOIEventService;
import com.shadowFrame.ai.hatred.AIHatredMeter;
import com.shadowFrame.ai.strategy.AIStrategyParam;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;
import com.shadowFrame.ai.tendency.AITendencyParam;

/**
 * ai模块
 * 
 * @author shadow
 *
 */
public class ComponentAI {
	
	//心跳触发ai事件频率  ms=AI_ACTION_FREQUENCY*50
	private static final int AI_ACTION_FREQUENCY = 5;

	/**
	 * 阶段策略数据
	 */
	private Map<PhaseEnum, List<AIStrategyParam>> StrategyData;
	/**
	 * 阶段切换血量百分比
	 */
	private Map<PhaseEnum, Double> phaseHp;
	/**
	 * ai事件收集列表key=AIEvent.source.getId():AIEvent.getEventType()
	 */
	private Map<String,AIEvent> aiEvents;
	/**
	 * ai每一帧的事件key=AIEvent.source.getId():AIEvent.getEventType()
	 */
	private Map<String,AIEvent> aiFrameEvents;
	/**
	 * ai仇恨管理器
	 */
	private AIHatredMeter hatredMeter;
	/**
	 * 当前阶段
	 */
	private PhaseEnum currentPhase;
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
	 * 可以获得下一个行为
	 */
	private boolean canGetNextTendency;
	/**
	 * 可以获得下一个动作
	 */
	private boolean canGetNextAction;
	/**
	 * ai初始心跳，需要设置物体创建事件和移动事件
	 */
	private boolean firstTick;
	/**
	 * 心跳周期
	 */
	private int tickTime;

	/**
	 * 
	 * @param self ai结附的场景物体
	 * @param isAiValid ai是否起效
	 */
	public ComponentAI(SceneObject self, boolean isAiValid) {
		this.self = self;
		this.valid = isAiValid;
		
		canGetNextTendency = true;
		canGetNextAction = true;

		currentPhase = PhaseEnum.OnePhase;

		hatredMeter = new AIHatredMeter();
		aiValidTime = 0;

		StrategyData = new HashMap<PhaseEnum, List<AIStrategyParam>>();
		phaseHp = new HashMap<PhaseEnum, Double>();

		aiEvents = new HashMap<String, AIEvent>();
		aiFrameEvents = new HashMap<String, AIEvent>();
		
		firstTick = true;
		tickTime = 0;
	}

	/**
	 * 设置ai数据（只设置一阶段）
	 * @param strategyData ai数据
	 */
	public void setCommonAIData(List<AIStrategyParam> strategyData) {
		setAIData(PhaseEnum.OnePhase, 1.0, strategyData);
	}

	/**
	 * 设置ai阶段数据
	 * @param phase 阶段
	 * @param phaseHpPersent 阶段切换血量
	 * @param strategyData ai数据
	 */
	public void setAIData(PhaseEnum phase, double phaseHpPersent, List<AIStrategyParam> strategyData) {
		StrategyData.put(phase, strategyData); 
		phaseHp.put(phase, phaseHpPersent);
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
		aiEvents.put(event.getSource().getId()+":"+event.getEventType(), event);
		aiFrameEvents.put(event.getSource().getId()+":"+event.getEventType(), event);
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
	public void tick() {
		if (!valid || System.currentTimeMillis() < aiValidTime) {
			if(currentAction != null){
				currentAction.stop(self);
			}
			aiEvents.clear();
			return;
		}
		
		if(firstTick){
			firstTick = false;
			//设置AI规则后，重新发起AI事件
			aiEvents.put(self.getId()+":"+AIEvent.CREATE.getEventType(), AIEvent.CREATE);
			AOIEventService.onSceneObjectMove(self, self.getPos(), self.getPos(), self.getDir());
		}
		
		
		//ai动作是否被打断
		if(currentAction != null && canGetNextAction == false){
			if(currentAction.isInterrupt(self,aiFrameEvents.values())){
				currentAction.stop(self);
				canGetNextTendency = true;
				canGetNextAction = true;
			}else if(currentAction.isOver(self,aiFrameEvents.values())){
				currentAction.stop(self);
				canGetNextAction = true;
			}			
		}
		
		//ai行为是否结束
		if(currentTendency != null && currentTendency.isOver(self,aiFrameEvents.values())){
			tendencyFinish();
			currentTendency = null;
		}
		aiFrameEvents.clear();
		
		tickTime++;
		if(tickTime > AI_ACTION_FREQUENCY){
			tickTime = 0;
			perception();
		}
	}

	private void perception() {
		//检测是否存在ai
		if(StrategyData.size() == 0){
			aiEvents.clear();
			return;
		}
		
		//最优先判断阶段切换
		if(isSwitchPhase()){
			currentStrategy = null;
		}
		
		//获得ai策略
		if(currentStrategy == null){
			for (AIStrategyParam strategyParam : StrategyData.get(currentPhase)) {
				if(strategyParam.CanEnterStrategy(self,aiEvents.values())){
					currentStrategy = strategyParam;
					currentStrategy.reset(self);
					tendencyFinish();
					break;
				}
			}
		}
		if(currentStrategy == null){
			return;
		}

		//获得ai行为
		if(currentTendency == null){
			tendencyFinish();
		}
		if(canGetNextTendency){
			if(currentAction != null){
				currentAction.stop(self);
			}
			if(currentTendency == null){
				currentTendency = currentStrategy.getTendency(self,aiEvents.values());
				if(currentTendency == null){
					return;
				}
			}else{				
				AITendencyParam nextTendency = currentTendency.getNextTendency();
				if(nextTendency == null){
					nextTendency = currentStrategy.getTendency(self,aiEvents.values());				
				}
				if(nextTendency == null){
					return;
				}
				currentTendency = nextTendency;
			}
			currentTendency.reset(self,currentStrategy);
			canGetNextTendency = false;
			currentAction = null;
		}
		
		//获得ai动作
		if(currentAction == null || canGetNextAction == true){
			AIActionParam nextAction = currentTendency.getNextAction(self,currentAction);
			if (nextAction == null) {
				tendencyFinish();
				currentStrategy = null;
				return;
			} else {
				currentAction = nextAction;
				currentAction.reset(self,currentTendency);
			}
			canGetNextAction = false;
		}

		//执行ai动作
		if(currentAction != null){
			currentAction.doAction(self);
		}
		//清空ai事件
		aiEvents.clear();
	}
	
	private void tendencyFinish(){
		canGetNextTendency = true;
		if(currentTendency != null){
			if(!currentTendency.decDoTimeAndNextCanDo()){
				for (List<AIStrategyParam> params : StrategyData.values()) {
					for (AIStrategyParam param : params) {
						param.removeTendency(currentTendency);
					}
				}
			}
		}
	}
	
	private boolean isSwitchPhase(){
		//判断碎盾阶段切换
		if (phaseHp.containsKey(PhaseEnum.breakShieldPhase)) {
			if (!self.isHaveShield() && !currentPhase.equals(PhaseEnum.breakShieldPhase)) {
				currentPhase = PhaseEnum.breakShieldPhase;
				AIEvent event = new AIEvent(AIEventEnum.SwitchPhase.getId(), currentPhase.getId()+"", AITargetObjectCampEnum.self.getId(), self);
				aiEvents.put(self.getId()+":"+event.getEventType(), event);
				aiFrameEvents.put(self.getId()+":"+event.getEventType(), event);
				return true;
			}
		}
		//判断普通阶段切换
		for (Entry<PhaseEnum, Double> phaseEnum : phaseHp.entrySet()) {
			if (phaseEnum.getKey().getId() > currentPhase.getId()) {
				if(phaseEnum.getKey().equals(PhaseEnum.breakShieldPhase)){
					continue;
				}
				double HPPersent = phaseEnum.getValue();
				double filterHp = self.getMaxHP() * HPPersent;
				float currentHp = (float) self.getHp();
				if (filterHp >= currentHp) {
					currentPhase = phaseEnum.getKey();
					AIEvent event = new AIEvent(AIEventEnum.SwitchPhase.getId(), currentPhase.getId()+"", AITargetObjectCampEnum.self.getId(), self);
					aiEvents.put(self.getId()+":"+event.getEventType(), event);
					aiFrameEvents.put(self.getId()+":"+event.getEventType(), event);
					return true;
				}
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
