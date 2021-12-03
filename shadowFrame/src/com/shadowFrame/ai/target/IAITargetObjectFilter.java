package com.shadowFrame.ai.target;

import com.shadowFrame.ai.SceneObject;

import java.util.List;

/**
 * ai获得目标接口
 *
 * @author Administrator
 */
public interface IAITargetObjectFilter {

    /**
     * 获得目标
     *
     * @param self
     * @return 目标集合
     */
    List<SceneObject> getTargetObjects(SceneObject self);

}
