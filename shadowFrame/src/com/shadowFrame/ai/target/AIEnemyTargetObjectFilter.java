package com.game2sky.prilib.core.socket.logic.battle.newAi.target;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * 获得所有敌人为目标
 * @author shadow
 *
 */
public class AIEnemyTargetObjectFilter implements IAITargetObjectFilter{

	@Override
	public List<DmcSceneObject> getTargetObjects(DmcSceneObject self) {
		return self.getAiCompnent().getAllHatredObjects();
	}

}
