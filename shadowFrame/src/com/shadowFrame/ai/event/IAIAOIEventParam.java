package com.game2sky.prilib.core.socket.logic.battle.newAi.event;

import com.game2sky.prilib.core.socket.logic.battle.newAi.AISceneObjectCampType;

public interface IAIAOIEventParam {

	AIAOIEventType getEventType();
	
	double getEventValue();
	
	AISceneObjectCampType getEventCampType();
	
}
