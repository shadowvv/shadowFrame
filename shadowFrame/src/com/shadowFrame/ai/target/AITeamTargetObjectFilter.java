package com.shadowFrame.ai.target;

import java.util.ArrayList;
import java.util.List;

import com.shadowFrame.ai.DmcSceneObject;

/**
 * 获得队友为目标
 * @author shadow
 *
 */
public class AITeamTargetObjectFilter implements IAITargetObjectFilter{

	@Override
	public List<DmcSceneObject> getTargetObjects(DmcSceneObject self) {
		List<DmcSceneObject> list = new ArrayList<DmcSceneObject>();
		//TODO:getTeamMember
		return list;
	}

}
