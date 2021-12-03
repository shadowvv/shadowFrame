package com.shadowFrame.ai.target;

import com.shadowFrame.ai.SceneObject;

import java.util.ArrayList;
import java.util.List;

/**
 * 获得普通目标
 *
 * @author shadow
 */
public class AICommonTargetObjectFilter implements IAITargetObjectFilter {

    @Override
    public List<SceneObject> getTargetObjects(SceneObject self) {
        List<SceneObject> targets = new ArrayList<SceneObject>();
        if (self.getComponentAI().getCommonTarget() != null) {
            targets.add(self.getComponentAI().getCommonTarget());
        }
        return targets;
    }

}
