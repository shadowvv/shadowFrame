package com.shadowFrame.ai;

public interface IAIState {
	int getStateId();
	String getStateName();
	void doAction(DmcSceneObject self);
}
