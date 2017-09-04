package com.game2sky.prilib.core.socket.logic.battle.newAi.target;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;


/**
 * ai事件和门槛的目标类型
 * @author shadow
 *
 */
public enum AITargetObjectCampEnum {
	/**
	 * 自己
	 */
	self(1,"self",null),
	/**
	 * 队友
	 */
	team(2,"team",null),
	/**
	 * 所有敌人
	 */
	enemy(3,"enemy",null),
	/**
	 * 目标
	 */
	target(4,"target",null),
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
