package com.shadowFrame.ai.strategy;

import java.util.List;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.aoiEvent.IAIAOIEvent;

public interface IAIStrategyParam {

	boolean transfer(SceneObject sceneObject, List<IAIAOIEvent> aoiEventList);

	IAIStrategy getToStrategy();

	IAIStrategy getStrategy();

}
