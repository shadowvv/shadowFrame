package com.game2sky.prilib.core.socket.logic.battle.newAi.tendency;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.action.AIActionParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.threshold.AIThresholdParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * ai行为参数
 * @author shadow
 *
 */
public class AITendencyParam {
	
	private int id;
	private int priority;
	private int weight;
	private List<AIThresholdParam> thresholds;
	private List<AIEvent> events;
	private AIActionParam firstAction;

	/**
	 * 
	 * @param id 行为id
	 * @param priority 优先级
	 * @param weight 权重
	 * @param threshold 进入行为门槛
	 * @param event 进入行为事件
	 * @param firstAction 行为第一个动作
	 */
	public AITendencyParam(int id,int priority,int weight,AIActionParam firstAction) {
		this.id = id;
		this.priority = priority;
		this.weight = weight;
		this.thresholds = firstAction.getWaitingThresholds();
		this.events = firstAction.getWaitingEvents();
		this.firstAction = firstAction;
	}
	
	/**
	 * 
	 * @return 行为id
	 */
	public int getId() {
		return id;
	}

	/**
	 * 
	 * @return 优先级
	 */
	public int getPriority() {
		return priority;
	}

	/**
	 * 
	 * @return 权重
	 */
	public int getWeight() {
		return weight;
	}

	/**
	 * 
	 * @return 进入行为门槛
	 */
	public List<AIThresholdParam> getEnterTendencyThresholds() {
		return thresholds;
	}

	/**
	 * 
	 * @return 进入行为事件
	 */
	public List<AIEvent> getEnterTendencyEvents() {
		return events;
	}

	/**
	 * 
	 * @return 行为第一个动作
	 */
	public AIActionParam getFirstAction() {
		return firstAction;
	}

	/**
	 * 停止行为
	 */
	public void stop() {
		AITendencyEnum.getTendency(id).stop();
	}

	/**
	 * 获得行为的下一个动作
	 * @param self ai绑定的单位
	 * @param aoiEventList 事件集合
	 * @param currentAction 当前动作
	 * @return 下一个动作
	 */
	public AIActionParam getNextAction(DmcSceneObject self,AIActionParam currentAction) {
		return AITendencyEnum.getTendency(id).getNextAction(self, this, currentAction);
	}

	/**
	 * 是否可进入行为
	 * @param self ai绑定的单位
	 * @param aoiEventList 事件集合
	 * @return
	 */
	public boolean CanEnterTendency(DmcSceneObject self) {
		return AITendencyEnum.getTendency(id).CanEnterTendency(self, this);
	}

	/**
	 * 
	 * @return 行为名
	 */
	public String getName() {
		return AITendencyEnum.getTendency(id).getName();
	}

	public boolean isOver(DmcSceneObject self, List<AIEvent> aiEvents) {
		return false;
	}

	public void reset() {
		// TODO Auto-generated method stub
		
	}

}
