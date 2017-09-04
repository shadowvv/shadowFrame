package com.game2sky.prilib.core.socket.logic.battle.newAi.event;

/**
 * ai事件类型
 * @author shadow
 *
 */
public enum AIEventEnum {
	/**
	 * 进入区域
	 */
	Range,
	/**
	 * 使用技能中
	 */
	castSkill,
	/**
	 * 被攻击
	 */
	BeHit,
	/**
	 * 心跳
	 */
	Time,
	/**
	 * 弹刀
	 */
	ReboundAttack,
	/**
	 * 切换状态
	 */
	SwitchPhase,
}
