package com.shadowFrame.ai.tendency;

import java.util.Collection;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.action.AIActionParam;
import com.shadowFrame.ai.condition.AbstractAICondition;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.strategy.AIStrategyParam;

/**
 * ai行为参数
 * @author shadow
 *
 */
public class AITendencyParam {
	
	private int id;
	private int type;
	private String param;
	private int priority;
	private int weight;
	private AbstractAICondition enterCondition;
	private AbstractAICondition overCondition;
	private AIActionParam firstAction;
	private AITendencyParam nextTendency;
	private int doTimes;
	
	private long beginTime;

	public AITendencyParam(int id,int type,String param,int priority,int weight,AIActionParam firstAction,AbstractAICondition enterCondition,AbstractAICondition overCondition,AITendencyParam nextTendency,int doTimes) {
		this.id = id;
		this.type = type;
		this.param = param;
		this.priority = priority;
		this.weight = weight;
		this.firstAction = firstAction;
		this.enterCondition = enterCondition;
		this.overCondition = overCondition;
		this.nextTendency = nextTendency;
		this.doTimes = doTimes;
		this.beginTime = System.currentTimeMillis();
	}
	
	/**
	 * 
	 * 
	 * @return 行为类型
	 */
	public int getType() {
		return type;
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
	 * 
	 * @return 策略参数
	 */
	public String getParam() {
		return param;
	}
	
	/**
	 * 
	 * 
	 * @return 执行次数
	 */
	public int getDoTimes() {
		return doTimes;
	}
	
	/**
	 * 
	 * 
	 * @return 下一个行为
	 */
	public AITendencyParam getNextTendency() {
		return nextTendency;
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
	 * @param currentAction 当前动作
	 * @param collection 
	 * @return 下一个动作
	 */
	public AIActionParam getNextAction(SceneObject self,AIActionParam currentAction) {
		return AITendencyEnum.getTendency(type).getNextAction(self, this, currentAction);
	}

	/**
	 * 是否可进入行为
	 * @param self ai绑定的单位
	 * @return
	 */
	public boolean CanEnterTendency(SceneObject self, Collection<AIEvent> collection) {
		if(enterCondition == null){
			return true;
		}
		return enterCondition.match(self,collection);
	}

	/**
	 * 
	 * @return 行为名
	 */
	public String getName() {
		return AITendencyEnum.getTendency(type).getName();
	}

	/**
	 * 是否可停止行为
	 * @param self
	 * @param collection 
	 * @return
	 */
	public boolean isOver(SceneObject self, Collection<AIEvent> collection) {
		if(overCondition == null){
			return false;
		}
		return overCondition.match(self,collection);
	}

	/**
	 * 重置行为
	 * @param currentStrategy 
	 * @param self 
	 */
	public void reset(SceneObject self, AIStrategyParam currentStrategy) {
		this.beginTime = System.currentTimeMillis();
	}

	/**
	 * 减少执行次数和下次是否可执行
	 * 
	 * @return
	 */
	public boolean decDoTimeAndNextCanDo() {
		if(doTimes < 0){
			return true;
		}
		if(doTimes == 0){
			return false;
		}
		doTimes--;
		return doTimes > 0;
	}

}
