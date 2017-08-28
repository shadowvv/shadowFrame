package com.shadowFrame.ai.action;

import java.util.List;

import com.shadowFrame.ai.Point;
import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.Vector3;
import com.shadowFrame.ai.aoiEvent.IAIAOIEvent;
import com.shadowFrame.ai.threshold.IAIThreshold;

public interface IAIActionParam {
	
	IAIThreshold getWaitingThreshold();
	
	List<IAIAOIEvent> getWaitingEvent();
	
	AIActionReason getActionReason();
	
	List<SceneObject> getActionTargetObjects();
	
	List<Point> getActionTargetPoints();
	
	Vector3 getActionDirection();
	
	boolean isFirstDo();
	
	IAIAction getAction();
	
}
