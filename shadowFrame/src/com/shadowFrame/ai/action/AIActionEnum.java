package com.shadowFrame.ai.action;


/**
 * AI行为枚举
 * @author shadow
 *
 */
public enum AIActionEnum {
	
	Idle(0,"Idle",new AIIdleAction()),
	MoveToObject(1,"MoveToObject",new AIMoveToObjectAction()),
	MoveToPoint(2,"MoveToPoint",new AIMoveToPointAction()),
	TurnToObject(3,"TurnToObject",new AITurnToObjectAction()),
	TurnToPoint(4,"TurnToPoint",new AITurnToPointAction()),
	RevolutionToObject(5,"RevolutionToObject",new AIRevolutionToObjectAction()),
	RevolutionToPoint(6,"RevolutionToPoint",new AIRevolutionToPointAction()),
	CastSkill(7,"CastSkill",new AICastSkillAction()),
	Dead(8,"Dead",new AIDeadAction()),
	
	;
	
	private static AIActionEnum[] enums = AIActionEnum.values();

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
	
	public IAIAction getAction() {
		return action;
	}
	
	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
}
