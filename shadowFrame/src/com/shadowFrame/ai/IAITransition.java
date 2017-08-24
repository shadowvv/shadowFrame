package com.shadowFrame.ai;

public interface IAITransition {
	int getId();
	IAIState doTransition(SceneObject self, IAOIEvent event, IAITransitionParam param);
}
