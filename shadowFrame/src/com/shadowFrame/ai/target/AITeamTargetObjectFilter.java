package com.shadowFrame.ai.target;

import java.util.ArrayList;
import java.util.List;

import com.shadowFrame.ai.SceneObject;

/**
 * 获得队友为目标
 * @author shadow
 *
 */
public class AITeamTargetObjectFilter implements IAITargetObjectFilter{

	@Override
	public List<SceneObject> getTargetObjects(SceneObject self) {
		List<SceneObject> list = new ArrayList<SceneObject>();
		//TODO:getTeamMember
		return list;
	}

}
