package com.shadowFrame.ai.action;

import java.util.List;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.FPoint3;
import com.shadowFrame.ai.event.IAIAOIEvent;
import com.shadowFrame.ai.threshold.IAIThresholdParam;

public interface IAIActionParam {
	
	IAIThresholdParam getWaitingThreshold();
	
	List<IAIAOIEvent> getWaitingEvent();
	
	AIActionReason getActionReason();
	
	List<DmcSceneObject> getActionTargetObjects();
	
	List<FPoint3> getActionTargetPoints();
	
	FPoint3 getActionDirection();
	
	boolean isFirstDo();
	
	IAIAction getAction();
	
	String getParam();

	IAIActionParam getNextActionParam();

	void resetParam();
	
}
