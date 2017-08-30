package com.shadowFrame.ai.event;

import java.util.List;

import com.shadowFrame.ai.AISceneObjectCampType;
import com.shadowFrame.ai.DmcSceneObject;

public interface IAIAOIEvent {
	
	AIAOIEventType getEventType();
	
	AISceneObjectCampType getEventCampType();
	
	DmcSceneObject getSource();

	List<DmcSceneObject> getObservers();

	List<DmcSceneObject> getTargets();

	String getParam();

	AIAOIEventParam toEventParam(DmcSceneObject self);
	
	int getEventHatredValue();

}
