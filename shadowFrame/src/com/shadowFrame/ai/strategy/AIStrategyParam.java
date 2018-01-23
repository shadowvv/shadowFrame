package com.shadowFrame.ai.strategy;

import java.util.Collection;
import java.util.List;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.condition.AbstractAICondition;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.tendency.AITendencyParam;

/**
 * ai策略参数
 * @author shadow
 *
 */
public class AIStrategyParam {
	
	/**
	 * 策略Id
	 */
	private int id;
	/**
	 * 策略类型
	 */
	private int type;
	/**
	 * 策略参数
	 */
	private String param;
	/**
	 * 进入条件
	 */
	private AbstractAICondition enterCondition;
	/**
	 * 结束条件
	 */
	private AbstractAICondition overCondition;
	/**
	 * 策略行为列表
	 */
	private List<AITendencyParam> tendencys;
	
	/**
	 * 开始时间
	 */
	private long beginTime;
	/**
	 * 当前参数
	 */
	private String currentParam;
	
	public AIStrategyParam(int id,int type,String param,List<AITendencyParam> tendencys,AbstractAICondition enterCondition,AbstractAICondition overCondition) {
		this.id = id;
		this.type = type;
		this.param = param;
		this.enterCondition = enterCondition;
		this.overCondition = overCondition;
		this.tendencys = tendencys;
		this.beginTime = System.currentTimeMillis();
	}
	
	/**
	 * 
	 * 
	 * @return 策略类型
	 */
	public int getType() {
		return type;
	}
	
	/**
	 * 
	 * @return 策略Id
	 */
	public int getId() {
		return id;
	}
	
	/**
	 * 
	 * @return 策略名
	 */
	public String getName(){
		return AIStrategyEnum.getStrategy(type).getName();
	}

	/**
	 * 
	 * @return 获得行为列表
	 */
	public List<AITendencyParam> getTendencyList() {
		return tendencys;
	}
	
	/**
	 * 
	 * @return 开始时间
	 */
	public long getBeginTime() {
		return beginTime;
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
	 * @return 当前参数
	 */
	public String getCurrentParam() {
		return currentParam;
	}

	/**
	 * 重置
	 * @param self 
	 */
	public void reset(DmcSceneObject self) {
		this.beginTime = System.currentTimeMillis();
	}
	
	/**
	 * 是否可进入策略
	 * @param self ai物体
	 * @return
	 */
	public boolean CanEnterStrategy(DmcSceneObject self,Collection<AIEvent> aiEvents) {
		if(enterCondition == null){
			return true;
		}
		return enterCondition.match(self,aiEvents);
	}

	/**
	 * 获得ai行为
	 * @param self ai物体
	 * @return ai行为
	 */
	public AITendencyParam getTendency(DmcSceneObject self,Collection<AIEvent> aiEvents) {
		return AIStrategyEnum.getStrategy(type).getTendency(self, this,aiEvents);
	}

	/**
	 * 策略是否结束
	 * @param self
	 * @param aiEvents
	 * @return
	 */
	public boolean isOver(DmcSceneObject self,Collection<AIEvent> aiEvents) {
		if(overCondition == null){
			return false;
		}
		return overCondition.match(self,aiEvents);
	}
	
	/**
	 * 移除行为
	 * 
	 * @param currentTendency
	 */
	public void removeTendency(AITendencyParam currentTendency) {
		tendencys.remove(currentTendency);
	}

}
