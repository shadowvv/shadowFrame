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
	
	private IDispatchAIEvent dispatcher;
	
	private AOIEventEnum(IDispatchAIEvent dispatcher) {
		this.dispatcher = dispatcher;
	}

	/**
	 * 
	 * @param aoiEvent 转换为ai事件
	 */
	public void dispatchAIEvent(AOIEvent aoiEvent) {
		dispatcher.dispatchAIEvent(aoiEvent);
	}
}
