package com.game2sky.prilib.core.socket.logic.battle.newAi.threshold;

import com.game2sky.prilib.core.socket.logic.battle.newAi.AISceneObjectCampType;

public class AIThresholdParam implements IAIThresholdParam{
	
	private AIThresholdType type;
	private AISceneObjectCampType campType;
	private double value;
	
	public AIThresholdParam(AIThresholdType type,double value,AISceneObjectCampType campType) {
		this.type = type;
		this.campType = campType;
		this.value = value;
	}

	@Override
	public AIThresholdType getThresholdType() {
		return type;
	}

	@Override
	public double getThresholdValue() {
		return value;
	}

	@Override
	public AISceneObjectCampType getThresholdCampType() {
		return campType;
	}

}
