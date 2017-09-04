package com.game2sky.prilib.core.socket.logic.battle.newAi.target;

import java.util.ArrayList;
import java.util.List;

import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

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
