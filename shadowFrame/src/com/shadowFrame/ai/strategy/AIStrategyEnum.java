package com.shadowFrame.ai.strategy;

import java.util.Collection;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.tendency.AITendencyParam;


/**
 * ai策略枚举
 * @author shadow
 *
 */
public enum AIStrategyEnum {

	/**
	 * 警戒策略
	 */
	VigilanceStrategy(1,"vigilance",new AIVigilanceStrategy()),
	/**
	 * 战斗策略
	 */
	BattleStrategy(2,"battle",new AIBattleStrategy()),
	/**
	 * 状态切换策略
	 */
	StopTheWorldStrategy(3,"stopTheWorld",new AIStopTheWorldStrategy()),
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
	 * 验证是否可进入当前策略
	 * @param self 获得ai策略的物体
	 * @param strategyParam 策略参数
	 * @return
	 */
	public AITendencyParam getTendency(DmcSceneObject self, AIStrategyParam strategyParam,Collection<AIEvent> aiEvents) {
		return strategy.getTendency(self, strategyParam,aiEvents);
	}
	
}
