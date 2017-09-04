package com.game2sky.prilib.core.socket.logic.battle.newAi.event;

import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

public interface IAIEvent {
	
	int getEventHatredValue();

	double getEventValue();

	DmcSceneObject getSource();

	boolean match(IAIEvent aoiEvent);

	AIEventEnum getEventType();

}
