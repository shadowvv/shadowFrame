package com.shadowFrame.ai.target;

import java.util.List;

import com.shadowFrame.ai.SceneObject;

/**
 * ai获得目标接口
 * @author Administrator
 *
 */
public interface IAITargetObjectFilter {

	/**
	 * 获得目标
	 * @param self
	 * @return 目标集合
	 */
	List<SceneObject> getTargetObjects(SceneObject self);
	
}
