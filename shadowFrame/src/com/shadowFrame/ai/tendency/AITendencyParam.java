package com.game2sky.prilib.core.socket.logic.battle.newAi.tendency;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.action.AOIActionParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIEvent;
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
	private AIThresholdParam threshold;
	private IAIEvent event;
	private AOIActionParam firstAction;

	/**
	 * 
	 * @param id 行为id
	 * @param priority 优先级
	 * @param weight 权重
	 * @param threshold 进入行为门槛
	 * @param event 进入行为事件
	 * @param firstAction 行为第一个动作
	 */
	public AITendencyParam(int id,int priority,int weight,AIThresholdParam threshold,IAIEvent event,AOIActionParam firstAction) {
		this.id = id;
		this.priority = priority;
		this.weight = weight;
		this.threshold = threshold;
		this.event = event;
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
	public AIThresholdParam getEnterTendencyThreshold() {
		return threshold;
	}

	/**
	 * 
	 * @return 进入行为事件
	 */
	public IAIEvent getEnterTendencyEvent() {
		return event;
	}

	/**
	 * 
	 * @return 行为第一个动作
	 */
	public AOIActionParam getFirstAction() {
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
	public AOIActionParam getNextAction(DmcSceneObject self, List<IAIEvent> aoiEventList,AOIActionParam currentAction) {
		return AITendencyEnum.getTendency(id).getNextAction(self, aoiEventList, this, currentAction);
	}

	/**
	 * 是否可进入行为
	 * @param self ai绑定的单位
	 * @param aoiEventList 事件集合
	 * @return
	 */
	public boolean CanEnterTendency(DmcSceneObject self, List<IAIEvent> aoiEventList) {
		return AITendencyEnum.getTendency(id).CanEnterTendency(self, aoiEventList, this);
	}

}
