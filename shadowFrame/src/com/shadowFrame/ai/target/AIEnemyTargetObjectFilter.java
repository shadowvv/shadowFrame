package com.shadowFrame.ai.target;

import com.shadowFrame.ai.SceneObject;

import java.util.List;

/**
 * 获得所有敌人为目标
 *
 * @author shadow
 */
public class AIEnemyTargetObjectFilter implements IAITargetObjectFilter {

    @Override
    public List<SceneObject> getTargetObjects(SceneObject self) {
        return self.getComponentAI().getAllHatredObjects();
    }

}
