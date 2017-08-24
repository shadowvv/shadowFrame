package com.shadowFrame.ai;

public interface IAITransitioner {
	void addTransition(IAITransition transition);
	IAIState getNextAIState(SceneObject self,IAOIEvent event,IAITransitionParam param);
}
