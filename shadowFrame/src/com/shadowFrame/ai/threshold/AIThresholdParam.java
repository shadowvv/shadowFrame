package com.shadowFrame.ai.threshold;

import com.shadowFrame.ai.AISceneObjectCampType;

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
