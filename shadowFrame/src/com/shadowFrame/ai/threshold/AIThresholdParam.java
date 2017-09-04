package com.game2sky.prilib.core.socket.logic.battle.newAi.threshold;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.target.AITargetObjectCampEnum;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * ai门槛参数
 * @author shadow
 *
 */
public class AIThresholdParam {
	
	private int id;
	private int campType;
	private double value;
	
	/**
	 * 
	 * @param id 门槛id
	 * @param value 门槛值
	 * @param campType 目标类型
	 */
	public AIThresholdParam(int id,double value,int campType) {
		this.id = id;
		this.campType = campType;
		this.value = value;
	}

	/**
	 * 
	 * @return 门槛Id
	 */
	public int getId() {
		return id;
	}
	
	/**
	 * 
	 * @return 门槛值
	 */
	public double getThresholdValue() {
		return value;
	}

	/**
	 * 
	 * @param self 获得目标的场景物体
	 * @return 门槛目标
	 */
	public List<DmcSceneObject> getTargetObjects(DmcSceneObject self) {
		return AITargetObjectCampEnum.getTargetComp(campType).getTargetObjects(self);
	}

	/**
	 * 是否过门槛
	 * @param self ai结附的场景物体
	 * @return
	 */
	public boolean overThreshold(DmcSceneObject self) {
		return AIThresholdEnum.getThreshold(id).overThreshold(self, this);
	}

}
