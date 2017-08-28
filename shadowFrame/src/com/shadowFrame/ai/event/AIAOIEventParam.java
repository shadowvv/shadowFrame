package com.game2sky.prilib.core.socket.logic.battle.newAi.event;

import com.game2sky.prilib.core.socket.logic.battle.newAi.AISceneObjectCampType;

public class AIAOIEventParam implements IAIAOIEventParam{
	
	private AIAOIEventType type;
	private AISceneObjectCampType campType;
	private double value;

	public AIAOIEventParam(AIAOIEventType type,double value,AISceneObjectCampType campType) {
		this.type = type;
		this.campType = campType;
		this.value = value;
	}
	
	@Override
	public AIAOIEventType getEventType() {
		return type;
	}

	@Override
	public double getEventValue() {
		return value;
	}

	@Override
	public AISceneObjectCampType getEventCampType() {
		return campType;
	}

}
