package com.shadowFrame.ai.action;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.physics.shape.point.FPoint3;
import com.shadowFrame.ai.condition.AbstractAICondition;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;
import com.shadowFrame.ai.tendency.AITendencyParam;

/**
 * ai动作参数
 * 
 * @author shadow
 *
 */
public class AIActionParam {
	
	private int id;
	private int type;
	private int targetCampType;
	private String param;
	private AbstractAICondition interruptCondition;
	private AbstractAICondition overCondition;
	private AIActionParam nextAction;
	private long beginTime;
	
	private boolean done;
	private List<FPoint3> targetPoints;
	private String currentParam;
	
	public AIActionParam(int id,int type,int targetCampType,String param,AbstractAICondition interruptCondition,AbstractAICondition overCondition) {
		this.id = id;
		this.type = type;
		this.targetCampType = targetCampType;
		this.param = param;
		this.interruptCondition = interruptCondition;
		this.overCondition = overCondition;
		
		this.beginTime = System.currentTimeMillis();
		targetPoints = new ArrayList<FPoint3>();
		currentParam = param;
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
	 * @return 动作全部参数
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
		return AIActionEnum.getAction(type).getName();
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
	 * @param self 
	 * @param currentTendency 
	 */
	public void reset(SceneObject self, AITendencyParam currentTendency) {
		done = false;
		beginTime = System.currentTimeMillis();
		AIActionEnum.getAction(type).reset(this,self,currentTendency);
	}
	
	/**
	 * 
	 * 
	 * @return 动作当前参数
	 */
	public String getCurrentParam() {
		return currentParam;
	}
	
	/**
	 * 设置动作当前参数
	 * 
	 * @param currentParam
	 */
	public void setCurrentParam(String currentParam) {
		this.currentParam = currentParam;
	}

	/**
	 * 停止动作
	 */
	public void stop(SceneObject self) {
		AIActionEnum.getAction(type).stop(self);
	}

	/**
	 * 执行动作
	 * @param self
	 */
	public void doAction(SceneObject self) {
		AIActionEnum.getAction(type).doAction(self,this);
	}

	/**
	 * 是否被打断
	 * @param self
	 * @param aiEvents
	 * @return
	 */
	public boolean isInterrupt(SceneObject self, Collection<AIEvent> aiEvents) {
		if(interruptCondition == null){
			return false;
		}
		return interruptCondition.match(self,aiEvents);
	}

	/**
	 * 是否正常结束
	 * @param self
	 * @param collection 
	 * @return
	 */
	public boolean isOver(SceneObject self, Collection<AIEvent> collection) {
		if(AIActionEnum.getAction(type).isOver(self, this,collection)){
			return true;
		}
		if(overCondition == null){
			return false;
		}
		return overCondition.match(self,collection);
	}

}
