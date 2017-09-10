package com.game2sky.prilib.core.socket.logic.battle.newAi.threshold;

import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * 门槛接口
 * @author shadow
 *
 */
public interface IAIThreshold {

	/**
	 * 获得门槛值
	 * @param self 发起检测的物体
	 * @param target 检测的物体
	 * @return 门槛值
	 */
	double getThresholdValue(DmcSceneObject self,DmcSceneObject target);
	
}
