package com.game2sky.prilib.core.socket.logic.battle.newAi.threshold;

import com.game2sky.prilib.core.socket.logic.battle.newAi.AISceneObjectCampType;

public interface IAIThresholdParam {

	AIThresholdType getThresholdType();
	
	double getThresholdValue();
	
	AISceneObjectCampType getThresholdCampType();
	
}
