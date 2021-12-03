package com.shadowFrame.ai.condition;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.threshold.AIThresholdParam;

import java.util.Collection;

/**
 * &&条件判断
 *
 * @author shadow
 * @version v0.1 2017年12月18日 下午5:23:32  shadow
 */
public class AIAndCondition extends AbstractAICondition {

    public AIAndCondition() {

    }

    @Override
    public boolean match(SceneObject self, Collection<AIEvent> aiEvents) {
        if (thresholds == null && events == null && conditions == null) {
            return true;
        }
        if (conditions != null) {
            for (AbstractAICondition abstractAICondition : conditions) {
                if (!abstractAICondition.match(self, aiEvents)) {
                    return false;
                }
            }
        }
        if (thresholds != null) {
            for (AIThresholdParam threshold : thresholds) {
                if (!threshold.overThreshold(self)) {
                    return false;
                }
            }
        }
        if (events != null) {
            for (AIEvent param : events) {
                boolean match = false;
                for (AIEvent aoiEvent : aiEvents) {
                    if (param.match(aoiEvent)) {
                        match = true;
                        break;
                    }
                }
                if (!match) {
                    return false;
                }
            }
        }
        return true;
    }

}
