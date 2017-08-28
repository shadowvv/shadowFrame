package com.game2sky.prilib.core.socket.logic.battle.newAi.event;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.AISceneObjectCampType;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

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
