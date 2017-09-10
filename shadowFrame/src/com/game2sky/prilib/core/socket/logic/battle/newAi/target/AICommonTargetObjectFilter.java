package com.game2sky.prilib.core.socket.logic.battle.newAi.target;

import java.util.ArrayList;
import java.util.List;

import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * 获得普通目标
 * @author shadow
 *
 */
public class AICommonTargetObjectFilter implements IAITargetObjectFilter{

	@Override
	public List<DmcSceneObject> getTargetObjects(DmcSceneObject self) {
		List<DmcSceneObject> targets = new ArrayList<DmcSceneObject>();
		if(self.getAiCompnent().getCommonTarget() != null){
			targets.add(self.getAiCompnent().getCommonTarget());
		}
		return targets;
	}
	
}
