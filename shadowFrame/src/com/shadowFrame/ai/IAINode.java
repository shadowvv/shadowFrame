package com.shadowFrame.ai;

import java.util.List;
import java.util.Map;

public interface IAINode {
	void initNode(Map<IAIState, List<IAITransitionParam>> config);
	void doNextAction(IAOIEvent event);
	String getCurrentStateName();
	int getCurrentStateId();
}
