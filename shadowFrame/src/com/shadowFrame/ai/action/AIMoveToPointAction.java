package com.shadowFrame.ai.action;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.tendency.AITendencyParam;
import com.shadowFrame.physics.shape.point.FPoint3;

import java.util.Collection;

/**
 * 移动到点动作
 *
 * @author shadow
 */
public class AIMoveToPointAction implements IAIAction {

    @Override
    public boolean doAction(SceneObject self, AIActionParam param) {
        if (!checkAction(self, param)) {
            return false;
        }
        @SuppressWarnings("unused")
        FPoint3 target = param.getActionTargetPoints().get(0);
        return false;
    }

    @Override
    public boolean checkAction(SceneObject self, AIActionParam param) {
        FPoint3 target = param.getActionTargetPoints().get(0);
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
        String[] params = param.getParam().split(",");
        FPoint3 target = new FPoint3(Float.parseFloat(params[0]), Float.parseFloat(params[1]), Float.parseFloat(params[2]));
        param.getActionTargetPoints().clear();
        param.getActionTargetPoints().add(target);
    }

    @Override
    public boolean isOver(SceneObject self, AIActionParam param, Collection<AIEvent> aiEvents) {
        FPoint3 target = param.getActionTargetPoints().get(0);
        if (target == null) {
            return true;
        }

        return false;
    }

}
