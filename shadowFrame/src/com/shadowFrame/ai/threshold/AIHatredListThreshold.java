package com.game2sky.prilib.core.socket.logic.battle.newAi.threshold;

import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * 仇恨列表数量门槛
 * @author shadow
 *
 */
public class AIHatredListThreshold implements IAIThreshold{

	@Override
	public double getThresholdValue(DmcSceneObject self, DmcSceneObject target) {
		return target.getAiCompnent().getHatredListSize();
	}

}
