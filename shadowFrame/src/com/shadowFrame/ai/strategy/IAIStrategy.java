package com.shadowFrame.ai.strategy;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.tendency.AITendencyParam;

import java.util.Collection;

/**
 * ai策略接口
 *
 * @author shadow
 */
public interface IAIStrategy {

    /**
     * 获得ai行为
     *
     * @param self          获得ai行为的物体
     * @param aoiEventList  事件列表
     * @param strategyParam 当前策略参数
     * @return ai行为
     */
    AITendencyParam getTendency(SceneObject self, AIStrategyParam strategyParam, Collection<AIEvent> aiEvents);

}
