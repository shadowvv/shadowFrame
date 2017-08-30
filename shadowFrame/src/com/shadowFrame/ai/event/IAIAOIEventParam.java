package com.shadowFrame.ai.event;

import com.shadowFrame.ai.AISceneObjectCampType;

public interface IAIAOIEventParam {

	AIAOIEventType getEventType();
	
	double getEventValue();
	
	AISceneObjectCampType getEventCampType();
	
}
