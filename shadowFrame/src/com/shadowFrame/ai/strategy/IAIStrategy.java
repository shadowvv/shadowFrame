package com.game2sky.prilib.core.socket.logic.battle.newAi.strategy;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.tendency.AITendencyParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

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
	AITendencyParam getTendency(DmcSceneObject self, List<IAIEvent> aoiEventList, AIStrategyParam strategyParam);

	/**
	 * 验证是否可进入当前策略
	 * @param self 获得ai策略的物体
	 * @param aoiEventList 事件列表
	 * @param strategyParam 策略参数
	 * @return
	 */
	boolean CanEnterStrategy(DmcSceneObject self, List<IAIEvent> aoiEventList, AIStrategyParam strategyParam);
	
}
