package com.shadowFrame.ai.action;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.tendency.AITendencyParam;

import java.util.Collection;

/**
 * 转向场景物体动作
 *
 * @author shadow
 */
public class AITurnToObjectAction implements IAIAction {

    @Override
    public boolean doAction(SceneObject self, AIActionParam param) {
        if (!checkAction(self, param)) {
            return false;
        }
        @SuppressWarnings("unused")
        SceneObject target = param.getActionTargetObjects(self).get(0);
        return true;
    }

    @Override
    public boolean checkAction(SceneObject self, AIActionParam param) {
        SceneObject target = param.getActionTargetObjects(self).get(0);
        if (target == null) {
            return false;
        }
        return true;
    }

    @Override
    public void stop(SceneObject self) {

    }

    @Override
    public void reset(AIActionParam param, SceneObject self, AITendencyParam currentTendency) {

    }

    @Override
    public boolean isOver(SceneObject self, AIActionParam param, Collection<AIEvent> aiEvents) {
        @SuppressWarnings("unused")
        SceneObject target = param.getActionTargetObjects(self).get(0);
        return false;
    }

}
