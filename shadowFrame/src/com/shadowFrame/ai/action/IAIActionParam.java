package com.game2sky.prilib.core.socket.logic.battle.newAi.action;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIAOIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.threshold.IAIThresholdParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;
import com.game2sky.publib.communication.game.struct.FPoint3;

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
