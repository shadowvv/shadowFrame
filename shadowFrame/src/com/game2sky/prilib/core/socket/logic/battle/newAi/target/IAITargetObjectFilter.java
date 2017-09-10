package com.game2sky.prilib.core.socket.logic.battle.newAi.target;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * ai获得目标接口
 * @author Administrator
 *
 */
public interface IAITargetObjectFilter {

	/**
	 * 获得目标
	 * @param self
	 * @return 目标集合
	 */
	List<DmcSceneObject> getTargetObjects(DmcSceneObject self);
	
}
