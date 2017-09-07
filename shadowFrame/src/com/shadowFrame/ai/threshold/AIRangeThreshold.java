package com.game2sky.prilib.core.socket.logic.battle.newAi.threshold;

import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;
import com.game2sky.publib.socket.logic.scene.SceneUtils;

/**
 * 距离门槛
 * @author shadow
 *
 */
public class AIRangeThreshold implements IAIThreshold{

	@Override
	public double getThresholdValue(DmcSceneObject self, DmcSceneObject target) {
		return SceneUtils.calcDis(self.getPos(), target.getPos());
	}

}
