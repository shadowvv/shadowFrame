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
	 * 进入警戒区域
	 */
	EnterVigilanceRange(1),
	/**
	 * 使用技能
	 */
	UseSkill(2),
	/**
	 * 结算技能
	 */
	ReleaseSkill(3),
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
	/**
	 * 使用技能结束
	 */
	finishSkill(8),
	/**
	 * 添加buff
	 */
	AddBuff(9),
	/**
	 * 移除buff
	 */
	RemoveBuff(10),
	/**
	 * buff tick结算
	 */
	BuffTick(11),
	/**
	 * 死亡
	 */
	Dead(12),
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

	public int getEventHatredValue(AIEvent aiEvent) {
		return 0;
	}

	public long getEventDamage() {
		return 0;
	}
}
