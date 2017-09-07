package com.game2sky.prilib.core.socket.logic.battle.newAi.event;

/**
 * ai事件类型
 * @author shadow
 *
 */
public enum AIEventEnum {
	/**
	 * 空事件
	 */
	EmptyEvent(0),
	/**
	 * 进入区域
	 */
	Range(1),
	/**
	 * 使用技能中
	 */
	castSkill(2),
	/**
	 * 被攻击
	 */
	BeHit(3),
	/**
	 * 心跳
	 */
	Time(4),
	/**
	 * 弹刀
	 */
	ReboundAttack(5),
	/**
	 * 切换状态
	 */
	SwitchPhase(6),
	/**
	 * 创建
	 */
	Create(7),
	;
	
	private int id;
	
	private AIEventEnum(int id) {
		this.id = id;
	}

	/**
	 * 
	 * @return id
	 */
	public int getId() {
		return id;
	}
}
