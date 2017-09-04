package com.game2sky.prilib.core.socket.logic.battle.newAi.threshold;

import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * 门槛接口
 * @author shadow
 *
 */
public interface IAIThreshold {

	/**
	 * 是否过门槛
	 * @param self ai结附的场景物体
	 * @return
	 */
	boolean overThreshold(DmcSceneObject self,AIThresholdParam param);
	
}
