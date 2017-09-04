package com.game2sky.prilib.core.socket.logic.battle.newAi.threshold;

import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;


/**
 * ai值门槛类型
 * @author shadow
 *
 */
public enum AIThresholdEnum {
	/**
	 * 血量低于百分比
	 */
	HPLowPercent(1,"HPLowPercent",new AILowHPPercentThreshold()),
	/**
	 * 血量高于百分比
	 */
	HPHighPercent(2,"HPHighPercent",new AIHighHPPercentThreshold()),
	;
	
	private static AIThresholdEnum[] enums = AIThresholdEnum.values();

	/**
	 * 获得门槛
	 * @param id 门槛Id
	 * @return
	 */
	public static AIThresholdEnum getThreshold(int id) {
		for (AIThresholdEnum aiEnum : enums) {
			if (aiEnum.id == id) {
				return aiEnum;
			}
		}
		return null;
	}
	
	private int id;
	private String name;
	private IAIThreshold threshold;
	
	private AIThresholdEnum(int id,String name,IAIThreshold threshold) {
		this.id = id;
		this.name = name;
		this.threshold = threshold;
	}
	
	/**
	 * 
	 * @return 门槛id
	 */
	public int getId() {
		return id;
	}
	
	/**
	 * 
	 * @return 门槛名
	 */
	public String getName() {
		return name;
	}
	
	/**
	 * 是否过门槛
	 * @param self ai结附的场景物体
	 * @return
	 */
	public boolean overThreshold(DmcSceneObject self,AIThresholdParam param){
		return threshold.overThreshold(self, param);
	}

}
