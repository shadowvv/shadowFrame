package com.game2sky.prilib.core.socket.logic.battle.newAi.action;

import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;


/**
 * AI动作枚举
 * @author shadow
 *
 */
public enum AIActionEnum {
	
	/**
	 * 待机
	 */
	Idle(1,"Idle",new AIIdleAction()),
	/**
	 * 移动到物体
	 */
	MoveToObject(2,"MoveToObject",new AIMoveToObjectAction()),
	/**
	 * 移动到点
	 */
	MoveToPoint(3,"MoveToPoint",new AIMoveToPointAction()),
	/**
	 * 转向到物体
	 */
	TurnToObject(4,"TurnToObject",new AITurnToObjectAction()),
	/**
	 * 转向到点
	 */
	TurnToPoint(5,"TurnToPoint",new AITurnToPointAction()),
	/**
	 * 围着物体公转
	 */
	RevolutionToObject(6,"RevolutionToObject",new AIRevolutionToObjectAction()),
	/**
	 * 围着点公转
	 */
	RevolutionToPoint(7,"RevolutionToPoint",new AIRevolutionToPointAction()),
	/**
	 * 释放技能
	 */
	CastSkill(8,"CastSkill",new AICastSkillAction()),
	/**
	 * 死亡
	 */
	Dead(9,"Dead",new AIDeadAction()),
	;
	
	private static AIActionEnum[] enums = AIActionEnum.values();

	/**
	 * 获得动作
	 * @param id 动作id
	 * @return
	 */
	public static AIActionEnum getAction(int id) {
		for (AIActionEnum aiEnum : enums) {
			if (aiEnum.id == id) {
				return aiEnum;
			}
		}
		return null;
	}
	
	private int id;
	private String name;
	private IAIAction action;
	
	private AIActionEnum(int id,String name,IAIAction action) {
		this.id = id;
		this.name = name;
		this.action = action;
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
	 * @return 动作名
	 */
	public String getName() {
		return name;
	}

	/**
	 * 执行动作
	 * @param self 执行动作的单位
	 * @param param 动作参数
	 */
	public void doAction(DmcSceneObject self, AIActionParam param) {
		action.doAction(self, param);
	}

	/**
	 * 停止动作
	 */
	public void stop(DmcSceneObject self) {
		action.stop(self);
	}

	/**
	 * 重置动作参数
	 * @param aiActionParam
	 */
	public void reset(AIActionParam param) {
		action.reset(param);
	}

	/**
	 * 是否结束动作
	 * @param self
	 * @param param
	 * @return
	 */
	public boolean isOver(DmcSceneObject self, AIActionParam param) {
		return action.isOver(self,param);
	}
}
