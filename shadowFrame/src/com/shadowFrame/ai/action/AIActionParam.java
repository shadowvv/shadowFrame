package com.shadowFrame.ai.action;

import java.util.ArrayList;
import java.util.List;

import com.shadowFrame.ai.AITransfer;
import com.shadowFrame.ai.FPoint3;
import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.event.AIEvent;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;
import com.shadowFrame.ai.threshold.AIThresholdParam;

/**
 * ai动作参数
 * 
 * @author shadow
 *
 */
public class AIActionParam {
	
	private int id;
	private int targetCampType;
	private String param;
	private List<AIThresholdParam> enterThresholds;
	private List<AIEvent> enterEvents;
	private List<AIThresholdParam> interruptThresholds;
	private List<AIEvent> interruptEvents;
	private AIActionParam nextAction;
	private AIActionParam middleAction;
	private long beginTime;
	
	private boolean done;
	private List<FPoint3> targetPoints;
	
	public AIActionParam(int id,int targetCampType,String param,AIActionParam middleAction,List<AIThresholdParam> enterThresholds,List<AIEvent> enterAiEvents,List<AIThresholdParam> interruptThresholds,List<AIEvent> interruptAIEvents) {
		this.id = id;
		this.targetCampType = targetCampType;
		this.param = param;
		this.middleAction = middleAction;
		this.enterEvents = enterAiEvents;
		this.enterThresholds = enterThresholds;
		this.interruptEvents = interruptAIEvents;
		this.interruptThresholds = interruptThresholds;
		
		this.beginTime = System.currentTimeMillis();
		targetPoints = new ArrayList<FPoint3>();
	}
	
	/**
	 * 设置下一个动作
	 * @param nextAction
	 */
	public void setNextAction(AIActionParam nextAction) {
		this.nextAction = nextAction;
	}
	
	/**
	 * 
	 * @return 动作Id
	 */
	public int getId() {
		return id;
	}

	/**
	 * 
	 * @return 进入动作门槛
	 */
	public List<AIThresholdParam> getEnterThresholds() {
		return enterThresholds;
	}

	/**
	 * 
	 * @return 进入动作事件
	 */
	public List<AIEvent> getEnterEvents() {
		return enterEvents;
	}
	
	/**
	 * 
	 * @return 动作参数
	 */
	public String getParam() {
		return param;
	}
	
	/**
	 * 
	 * @return 下一个动作
	 */
	public AIActionParam getNextActionParam() {
		return nextAction;
	}
	
	/**
	 * 
	 * @return 目标类型
	 */
	public int getTargetCampType() {
		return targetCampType;
	}
	
	/**
	 * 
	 * @return 动作名字
	 */
	public String getName() {
		return AIActionEnum.getAction(id).getName();
	}

	/**
	 * 
	 * @return 动作目标单位
	 */
	public List<SceneObject> getActionTargetObjects(SceneObject self) {
		return AITargetObjectCampEnum.getTargetComp(targetCampType).getTargetObjects(self);
	}

	/**
	 * 
	 * @return 动作目标点
	 */
	public List<FPoint3> getActionTargetPoints() {
		return targetPoints;
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
	 * @return 动作是否已经完成
	 */
	public boolean isDone(){
		return done;
	}
	
	/**
	 * 
	 * @param done 动作是否完成
	 */
	public void setDone(boolean done){
		this.done = done;
	}

	/**
	 * 重置动作参数
	 */
	public void reset() {
		done = false;
		beginTime = System.currentTimeMillis();
		AIActionEnum.getAction(id).reset(this);
	}

	/**
	 * 停止动作
	 */
	public void stop(SceneObject self) {
		AIActionEnum.getAction(id).stop(self);
	}

	/**
	 * 执行动作
	 * @param self
	 */
	public void doAction(SceneObject self) {
		AIActionEnum.getAction(id).doAction(self,this);
	}
	
	/**
	 * 获得中间动作
	 * @param self
	 * @return
	 */
	public AIActionParam getMiddleAction(SceneObject self) {
		if(middleAction == null){
			return null;
		}
		if (AITransfer.transfer(middleAction.getEnterThresholds(), middleAction.getEnterEvents(), self)) {
			return middleAction;
		}
		return null;
	}

	/**
	 * 是否被打断
	 * @param self
	 * @return
	 */
	public boolean isInterrupt(SceneObject self) {
		if((interruptThresholds == null || interruptThresholds.size() == 0) && (interruptEvents == null || interruptEvents.size() == 0)){
			return false;
		}
		if (AITransfer.transfer(interruptThresholds,interruptEvents, self)) {
			return true;
		}
		return false;
	}

	/**
	 * 是否正常结束
	 * @param self
	 * @return
	 */
	public boolean isOver(SceneObject self) {
		return AIActionEnum.getAction(id).isOver(self,this);
	}

}
