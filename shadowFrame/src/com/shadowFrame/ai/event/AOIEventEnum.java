package com.game2sky.prilib.core.socket.logic.battle.newAi.event;


/**
 * 事件类型枚举
 * @author shadow
 *
 */
public enum AOIEventEnum {

	/**
	 * 移动
	 */
	Move(new MoveDispatchAIEvent()),
	/**
	 * 使用技能
	 */
	UseSkill(new UseSkillDispatchAIEvent()),
	/**
	 * 结算技能
	 */
	ReleaseSkill(new ReleaseSkillDispatchAIEvent()),
	/**
	 * 结束技能
	 */
	FinishSkill(new FinishSkillDispatchAIEvent()),
	/**
	 * 添加buff
	 */
	AddBuff(new AddBuffDispatchAIEvent()),
	/**
	 * 移除buff
	 */
	RemoveBuff(new RemoveBuffDispatchAIEvent()),
	/**
	 * 弹刀
	 */
	ReboundAttack(new ReboundAttackDispatchAIEvent()),
	;
	
	private IAOI2AIEvent dispatcher;
	
	private AOIEventEnum(IAOI2AIEvent dispatcher) {
		this.dispatcher = dispatcher;
	}

	/**
	 * 派发事件
	 * @param aoiEvent aoi事件
	 */
	public void dispatchAIEvent(AOIEvent aoiEvent) {
		dispatcher.dispatchAIEvent(aoiEvent);
	}
}
