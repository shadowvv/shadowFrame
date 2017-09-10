package com.game2sky.prilib.core.socket.logic.battle.newAi.strategy;

import com.game2sky.prilib.core.socket.logic.battle.newAi.tendency.AITendencyParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;


/**
 * ai策略枚举
 * @author shadow
 *
 */
public enum AIStrategyEnum {

	/**
	 * 一般策略
	 */
	CommonStrategy(1,"common",new AICommonStrategy()),
	/**
	 * 状态切换策略
	 */
	StopTheWorldStrategy(2,"stopTheWorld",new AIStopTheWorldStrategy()),
	;
	
	private static AIStrategyEnum[] enums = AIStrategyEnum.values();

	public static AIStrategyEnum getStrategy(int id) {
		for (AIStrategyEnum aiEnum : enums) {
			if (aiEnum.id == id) {
				return aiEnum;
			}
		}
		return null;
	}
	
	private int id;
	private String name;
	private IAIStrategy strategy;
	
	private AIStrategyEnum(int id,String name,IAIStrategy strategy) {
		this.id = id;
		this.name = name;
		this.strategy = strategy;
	}
	
	/**
	 * 
	 * @return 策略Id
	 */
	public int getId() {
		return id;
	}
	
	/**
	 * 
	 * @return 策略名字
	 */
	public String getName() {
		return name;
	}

	/**
	 * 获得ai行为
	 * @param self 获得ai行为的物体
	 * @param strategyParam 当前策略参数
	 * @return ai行为
	 */
	public boolean CanEnterStrategy(DmcSceneObject self, AIStrategyParam strategyParam) {
		return strategy.CanEnterStrategy(self, strategyParam);
	}

	/**
	 * 验证是否可进入当前策略
	 * @param self 获得ai策略的物体
	 * @param strategyParam 策略参数
	 * @return
	 */
	public AITendencyParam getTendency(DmcSceneObject self, AIStrategyParam strategyParam) {
		return strategy.getTendency(self, strategyParam);
	}

	/**
	 * 验证是否可结束策略
	 * @param self
	 * @param strategyParam
	 * @return
	 */
	public boolean isOverStrategy(DmcSceneObject self,AIStrategyParam strategyParam) {
		return strategy.isOverStrategy(self, strategyParam);
	}
	
}
