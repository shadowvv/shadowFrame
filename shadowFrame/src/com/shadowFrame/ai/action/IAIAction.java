package com.game2sky.prilib.core.socket.logic.battle.newAi.action;

import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

public interface IAIAction {
	
	int getActionId();
	
	String getActionName();

	boolean doAction(DmcSceneObject self,IAIActionParam param);

	boolean checkAction(DmcSceneObject self,IAIActionParam param);

	void stop();
	
}
