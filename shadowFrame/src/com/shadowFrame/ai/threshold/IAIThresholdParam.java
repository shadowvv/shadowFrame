package com.shadowFrame.ai.threshold;

import com.shadowFrame.ai.AISceneObjectCampType;

public interface IAIThresholdParam {

	AIThresholdType getThresholdType();
	
	double getThresholdValue();
	
	AISceneObjectCampType getThresholdCampType();
	
}
