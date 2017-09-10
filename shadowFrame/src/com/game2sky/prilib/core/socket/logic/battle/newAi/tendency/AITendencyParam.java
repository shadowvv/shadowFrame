package com.game2sky.prilib.core.socket.logic.battle.newAi.tendency;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.action.AIActionParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.threshold.AIThresholdParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;
import com.game2sky.publib.Globals;

/**
 * ai行为参数
 * @author shadow
 *
 */
public class AITendencyParam {
	
	private int id;
	private int priority;
	private int weight;
	private List<AIThresholdParam> enterThresholds;
	private List<AIEvent> enterEvents;
	private List<AIThresholdParam> overThresholds;
	private List<AIEvent> overEvents;
	private AIActionParam firstAction;
	private long beginTime;

	/**
	 * 
	 * @param id 行为id
	 * @param priority 优先级
	 * @param weight 权重
	 * @param threshold 进入行为门槛
	 * @param event 进入行为事件
	 * @param firstAction 行为第一个动作
	 */
	public AITendencyParam(int id,int priority,int weight,AIActionParam firstAction,List<AIThresholdParam> overThresholds,List<AIEvent> overEvents) {
		this.id = id;
		this.priority = priority;
		this.weight = weight;
		this.enterThresholds = firstAction.getEnterThresholds();
		this.enterEvents = firstAction.getEnterEvents();
		this.overThresholds = overThresholds;
		this.overEvents = overEvents;
		this.firstAction = firstAction;
		this.beginTime = Globals.getTimeService().now();
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
		return enterThresholds;
	}

	/**
	 * 
	 * @return 进入行为事件
	 */
	public List<AIEvent> getEnterTendencyEvents() {
		return enterEvents;
	}
	
	/**
	 * 
	 * @return 结束行为事件
	 */
	public List<AIEvent> getOverEvents() {
		return overEvents;
	}
	
	/**
	 * 
	 * @return 结束行为门槛
	 */
	public List<AIThresholdParam> getOverThresholds() {
		return overThresholds;
	}
	
	/**
	 * 
	 * @return 行为开始时间
	 */
	public long getBeginTime() {
		return beginTime;
	}

	/**
	 * 
	 * @return 行为第一个动作
	 */
	public AIActionParam getFirstAction() {
		return firstAction;
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

	/**
	 * 是否可停止行为
	 * @param self
	 * @param aiEvents
	 * @return
	 */
	public boolean isOver(DmcSceneObject self, List<AIEvent> aiEvents) {
		return AITendencyEnum.getTendency(id).isOver(self, this);
	}

	/**
	 * 重置行为
	 */
	public void reset() {
		this.beginTime = Globals.getTimeService().now();
	}

}
