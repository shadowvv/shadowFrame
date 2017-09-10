package com.game2sky.prilib.core.socket.logic.battle.newAi.target;

import java.util.ArrayList;
import java.util.List;

import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * 获得自身为目标
 * @author shadow
 *
 */
public class AISelfTargetObjectFilter implements IAITargetObjectFilter{

	@Override
	public List<DmcSceneObject> getTargetObjects(DmcSceneObject self) {
		List<DmcSceneObject> list = new ArrayList<DmcSceneObject>();
		list.add(self);
		return list;
	}

}
