package com.shadowFrame.ai.tendency;

import com.shadowFrame.ai.IAIAction;
import com.shadowFrame.ai.SceneObject;

public interface IAITendency {

	IAIAction getMoveAction(SceneObject sceneObject);

	IAIAction getSkillAction(SceneObject sceneObject);

}
