package com.game2sky.prilib.core.socket.logic.battle.newAi.threshold;

import com.game2sky.prilib.core.socket.logic.properties.BProperty;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * 血量百分比门槛
 * @author shadow
 *
 */
public class AIHPPercentThreshold implements IAIThreshold{

	@Override
	public double getThresholdValue(DmcSceneObject self, DmcSceneObject target) {
		return target.getDmcHp()/target.getBProperty(BProperty.HP_MAX);
	}

}
