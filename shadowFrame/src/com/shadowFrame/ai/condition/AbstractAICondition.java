package com.shadowFrame.ai.condition;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.action.AIActionEnum;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.threshold.AIThresholdEnum;
import com.shadowFrame.ai.condition.threshold.AIThresholdParam;
import com.shadowFrame.ai.dict.DictAiAction;

import java.util.Collection;
import java.util.List;

/**
 * ai条件
 *
 * @author shadow
 * @version v0.1 2017年12月18日 下午4:59:49  shadow
 */
public abstract class AbstractAICondition {

    /**
     * 门槛
     */
    protected List<AIThresholdParam> thresholds;
    /**
     * 事件
     */
    protected List<AIEvent> events;
    /**
     * 条件
     */
    protected List<AbstractAICondition> conditions;

    public AbstractAICondition() {

    }

    /**
     * 设置条件
     *
     * @param conditions
     */
    public void setConditions(List<AbstractAICondition> conditions) {
        this.conditions = conditions;
    }

    /**
     * 设置事件
     *
     * @param events
     */
    public void setEvents(List<AIEvent> events) {
        this.events = events;
    }

    /**
     * 设置门槛
     *
     * @param thresholds
     */
    public void setThresholds(List<AIThresholdParam> thresholds) {
        this.thresholds = thresholds;
    }

    /**
     * 修正门槛
     *
     * @param config
     */
    public void fixThreshold(DictAiAction config) {
        if (config.getActionId() == AIActionEnum.CastSkill.getId()) {
            for (AIThresholdParam threshold : thresholds) {
                if (threshold.getId() == AIThresholdEnum.Range.getId() && threshold.getThresholdValue() == -1) {
                    threshold.setValue(3);
                }
            }
        }
    }

    /**
     * 判断当前条件是否符合
     *
     * @param self
     * @param collection
     * @return
     */
    public abstract boolean match(SceneObject self, Collection<AIEvent> collection);

}
