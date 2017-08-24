package com.shadowFrame.ai;

public interface IAITransitionParam {
	int getTransitionId();
	int getTransitToStateId();
	String getTransitionParam();
	int getPriorityLevel();
}
