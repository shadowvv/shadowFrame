package com.shadowFrame.ai.target;

import java.util.List;

import com.shadowFrame.ai.DmcSceneObject;


/**
 * ai事件和门槛的目标类型
 * @author shadow
 *
 */
public enum AITargetObjectCampEnum {
	/**
	 * 自己
	 */
	self(1,"self",new AISelfTargetObjectFilter()),
	/**
	 * 队友
	 */
	team(2,"team",new AITeamTargetObjectFilter()),
	/**
	 * 所有敌人
	 */
	enemy(3,"enemy",new AIEnemyTargetObjectFilter()),
	/**
	 * 目标
	 */
	target(4,"target",new AICommonTargetObjectFilter()),
	;
	
	private static AITargetObjectCampEnum[] enums = AITargetObjectCampEnum.values();

	/**
	 * 获得目标类型
	 * @param id
	 * @return
	 */
	public static AITargetObjectCampEnum getTargetComp(int id) {
		for (AITargetObjectCampEnum aiEnum : enums) {
			if (aiEnum.id == id) {
				return aiEnum;
			}
		}
		return null;
	}
	
	private int id;
	private String name;
	private IAITargetObjectFilter getTarget;
	
	private AITargetObjectCampEnum(int id,String name,IAITargetObjectFilter getTarget) {
		this.id = id;
		this.name = name;
		this.getTarget = getTarget;
	}
	
	/**
	 * 获得目标
	 * @param self
	 * @return
	 */
	public List<DmcSceneObject> getTargetObjects(DmcSceneObject self){
		return getTarget.getTargetObjects(self);
	}
	
	/**
	 * 
	 * @return 目标类型Id
	 */
	public int getId() {
		return id;
	}
	
	/**
	 * 
	 * @return 目标类型名
	 */
	public String getName() {
		return name;
	}
	
}
