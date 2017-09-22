package com.shadowFrame.ai.strategy;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.tendency.AITendencyParam;

/**
 * ai策略接口
 * @author shadow
 *
 */
public interface IAIStrategy {

	/**
	 * 获得ai行为
	 * @param self 获得ai行为的物体
	 * @param aoiEventList 事件列表
	 * @param strategyParam 当前策略参数
	 * @return ai行为
	 */
	AITendencyParam getTendency(SceneObject self, AIStrategyParam strategyParam);

	/**
	 * 验证是否可进入当前策略
	 * @param self 获得ai策略的物体
	 * @param aoiEventList 事件列表
	 * @param strategyParam 策略参数
	 * @return
	 */
	boolean CanEnterStrategy(SceneObject self, AIStrategyParam strategyParam);

	/**
	 * 验证是否可结束策略
	 * @param self
	 * @param strategyParam
	 * @return
	 */
	boolean isOver(SceneObject self, AIStrategyParam strategyParam);
	
}
