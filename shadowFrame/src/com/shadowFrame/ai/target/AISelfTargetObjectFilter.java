package com.shadowFrame.ai.target;

import com.shadowFrame.ai.SceneObject;

import java.util.ArrayList;
import java.util.List;

/**
 * 获得自身为目标
 *
 * @author shadow
 */
public class AISelfTargetObjectFilter implements IAITargetObjectFilter {

    @Override
    public List<SceneObject> getTargetObjects(SceneObject self) {
        List<SceneObject> list = new ArrayList<SceneObject>();
        list.add(self);
        return list;
    }

}
