package com.shadowFrame.ai.target;

import java.util.List;

import com.shadowFrame.ai.SceneObject;

/**
 * 获得所有敌人为目标
 * @author shadow
 *
 */
public class AIEnemyTargetObjectFilter implements IAITargetObjectFilter{

	@Override
	public List<SceneObject> getTargetObjects(SceneObject self) {
		return self.getComponentAI().getAllHatredObjects();
	}

}
