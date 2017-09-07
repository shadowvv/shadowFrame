package com.game2sky.prilib.core.socket.logic.battle.newAi.threshold;

import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;


/**
 * ai值门槛类型
 * @author shadow
 *
 */
public enum AIThresholdEnum {
	/**
	 * 无门槛
	 */
	Empty(0,"empty",new IAIThreshold(){
		@Override
		public double getThresholdValue(DmcSceneObject self, DmcSceneObject target) {
			return 0;
		}
	}),
	/**
	 * 血量高于百分比
	 */
	HPPercent(1,"HPHighPercent",new AIHPPercentThreshold()), 
	/**
	 * 仇恨列表
	 */
	HatredList(2,"HatredList",new AIHatredListThreshold()), 
	/**
	 * 距离
	 */
	range(3,"range",new AIRangeThreshold()),
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
	 * @param self 发起检测的物体
	 * @param target 检测的物体
	 * @param value 门槛值
	 * @param compare 比较方式
	 * @return
	 */
	public boolean overThreshold(DmcSceneObject self,DmcSceneObject target,double value,AIValueCompareEnum compare){
		if(id == Empty.getId()){
			return true;
		}
		double testValue = threshold.getThresholdValue(self, target);
		return compare.compare(testValue,value);
	}

}
