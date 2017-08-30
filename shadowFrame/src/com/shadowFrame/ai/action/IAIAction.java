package com.shadowFrame.ai.action;

import com.shadowFrame.ai.DmcSceneObject;

public interface IAIAction {
	
	int getActionId();
	
	String getActionName();

	boolean doAction(DmcSceneObject self,IAIActionParam param);

	boolean checkAction(DmcSceneObject self,IAIActionParam param);

	void stop();
	
}
