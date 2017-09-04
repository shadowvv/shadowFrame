package com.game2sky.prilib.core.socket.logic.battle.newAi.threshold;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.properties.BProperty;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * 血量低于百分比门槛
 * @author shadow
 *
 */
public class AILowHPPercentThreshold implements IAIThreshold{

	@Override
	public boolean overThreshold(DmcSceneObject self,AIThresholdParam param) {
		double filterHp = 0;
		float currentHp = 0;
		boolean over = true;
		List<DmcSceneObject> targets = param.getTargetObjects(self);
		for (DmcSceneObject target : targets) {
			filterHp = target.getBProperty(BProperty.HP_MAX) * param.getThresholdValue();
			currentHp = target.getDmcHp();
			if (currentHp > filterHp) {
				over = false;
				break;
			}	
		}
		return over;
	}

}
