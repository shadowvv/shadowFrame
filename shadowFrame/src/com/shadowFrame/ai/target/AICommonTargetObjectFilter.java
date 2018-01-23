package com.shadowFrame.ai.target;

import java.util.ArrayList;
import java.util.List;

import com.shadowFrame.ai.DmcSceneObject;

/**
 * 获得普通目标
 * @author shadow
 *
 */
public class AICommonTargetObjectFilter implements IAITargetObjectFilter{

	@Override
	public List<DmcSceneObject> getTargetObjects(DmcSceneObject self) {
		List<DmcSceneObject> targets = new ArrayList<DmcSceneObject>();
		if(self.getComponentAI().getCommonTarget() != null){
			targets.add(self.getComponentAI().getCommonTarget());
		}
		return targets;
	}
	
}
