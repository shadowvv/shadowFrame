package com.shadowFrame.ai.action;

import com.shadowFrame.ai.SceneObject;

public interface IAIAction {
	
	int getActionId();
	
	String getActionName();

	void doAction(SceneObject self,IAIActionParam param);

}
