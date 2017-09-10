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
	
	/**
	 * 无门槛
	 */
	public static final AIThresholdParam EMPTY_THRESHOLD = new AIThresholdParam(AIThresholdEnum.Empty.getId(), 0, AITargetObjectCampEnum.self.getId(),0);
	
	private int id;
	private int campType;
	private double value;
	private int compareType;
	
	/**
	 * 
	 * @param id 门槛id
	 * @param value 门槛值
	 * @param campType 目标类型
	 */
	public AIThresholdParam(int id,double value,int campType,int compareType) {
		this.id = id;
		this.campType = campType;
		this.value = value;
		this.compareType = compareType;
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
	 * 是否过门槛
	 * @param self ai结附的场景物体
	 * @return
	 */
	public boolean overThreshold(DmcSceneObject self) {
		List<DmcSceneObject> targets = AITargetObjectCampEnum.getTargetComp(campType).getTargetObjects(self);
		if(targets.size() == 0){
			return false;
		}
		for (DmcSceneObject target : targets) {
			if(!AIThresholdEnum.getThreshold(id).overThreshold(self,target, value,AIValueCompareEnum.getCompare(compareType))){
				return false;
			}
		}
		return true;
	}

}
