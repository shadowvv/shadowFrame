package com.shadowFrame.ai.target;

import java.util.ArrayList;
import java.util.List;

import com.shadowFrame.ai.SceneObject;

/**
 * 获得普通目标
 * @author shadow
 *
 */
public class AICommonTargetObjectFilter implements IAITargetObjectFilter{

	@Override
	public List<SceneObject> getTargetObjects(SceneObject self) {
		List<SceneObject> targets = new ArrayList<SceneObject>();
		if(self.getAiCompnent().getCommonTarget() != null){
			targets.add(self.getAiCompnent().getCommonTarget());
		}
		return targets;
	}
	
}
