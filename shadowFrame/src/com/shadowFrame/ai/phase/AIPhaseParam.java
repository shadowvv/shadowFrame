package com.shadowFrame.ai.phase;

import java.util.List;

import com.shadowFrame.ai.AITransfer;
import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.event.AIEvent;
import com.shadowFrame.ai.threshold.AIThresholdParam;

/**
 * ai阶段参数
 * 
 * @author shadow
 *
 */
public class AIPhaseParam {
	
	/**
	 * 阶段Id
	 */
	private int id;
	/**
	 * 进入阶段的门槛
	 */
	private List<AIThresholdParam> enterThresholds;
	/**
	 * 进入阶段的事件
	 */
	private List<AIEvent> enterEvents;
	/**
	 * 开始时间
	 */
	private long beginTime;
	
	public AIPhaseParam(int id,List<AIThresholdParam> enterThresholds,List<AIEvent> enterEvents) {
		this.id = id;
		this.enterThresholds = enterThresholds;
		this.enterEvents = enterEvents;
	}
	
	/**
	 * 
	 * 
	 * @return 进入事件
	 */
	public List<AIEvent> getEnterEvents() {
		return enterEvents;
	}
	
	/**
	 * 
	 * @return 进入门槛
	 */
	public List<AIThresholdParam> getEnterThresholds() {
		return enterThresholds;
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
	 * @return 阶段Id
	 */
	public int getId() {
		return id;
	}
	
	/**
	 * 重置
	 */
	public void reset() {
		this.beginTime = System.currentTimeMillis();
	}
	
	/**
	 * 是否可进入阶段
	 * @param self ai物体
	 * @return
	 */
	public boolean CanEnterPhase(SceneObject self) {
		if(AITransfer.transfer(enterThresholds, enterEvents, self)){
			return true;
		}
		return false;
	}

	/**
	 * 
	 * @return 获得阶段
	 */
	public AIPhaseEnum getPhase() {
		return AIPhaseEnum.getPhase(id);
	}
}
