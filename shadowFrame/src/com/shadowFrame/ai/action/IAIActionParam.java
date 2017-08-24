package com.shadowFrame.ai.action;

import java.util.List;

import com.shadowFrame.ai.Point;
import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.Vector3;

public interface IAIActionParam {
	
	AIActionReason getActionReason();
	
	List<SceneObject> getActionTargetObjects();
	
	List<Point> getActionTargetPoints();
	
	Vector3 getActionDirection();
	
	boolean isFirstDo();
	
	IAIAction getAction();
	
}
