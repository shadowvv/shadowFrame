package com.shadowFrame.ai.action;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.threshold.AIThresholdEnum;
import com.shadowFrame.ai.condition.threshold.AIThresholdParam;
import com.shadowFrame.ai.condition.threshold.AIValueCompareEnum;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;
import com.shadowFrame.ai.tendency.AITendencyParam;
import com.shadowFrame.util.MathUtil;

import java.util.Collection;

/**
 * 围绕场景物体公转动作
 *
 * @author shadow
 */
public class AIRevolutionToObjectAction implements IAIAction {

    @Override
    public boolean doAction(SceneObject self, AIActionParam param) {
        if (!checkAction(self, param)) {
            return false;
        }
        int revolutionDir = 1;
        String[] currentParams = param.getCurrentParam().split(":");
        param.setCurrentParam(currentParams[0] + ":" + revolutionDir + ":" + (System.currentTimeMillis() + 1100));
        return false;
    }

    @Override
    public boolean checkAction(SceneObject self, AIActionParam param) {

        if (param.getActionTargetObjects(self) == null || param.getActionTargetObjects(self).size() == 0) {
            return false;
        }
        SceneObject target = param.getActionTargetObjects(self).get(0);
        if (target == null) {
            return false;
        }
        long nextTime = Long.parseLong(param.getCurrentParam().split(":")[2]);
        if (System.currentTimeMillis() < nextTime) {
            return false;
        }
        return true;
    }

    @Override
    public void stop(SceneObject self) {

    }

    @Override
    public void reset(AIActionParam param, SceneObject self, AITendencyParam currentTendency) {
        param.setCurrentParam(param.getParam() + ":" + MathUtil.randomSign() + ":" + param.getBeginTime());
    }

    @Override
    public boolean isOver(SceneObject self, AIActionParam param, Collection<AIEvent> aiEvents) {
        int time = Integer.parseInt(param.getCurrentParam().split(":")[0]);
        AIThresholdParam threshold = new AIThresholdParam(AIThresholdEnum.ActionDuation.getId(), time, AITargetObjectCampEnum.self.getId(), AIValueCompareEnum.NotSmaller.getId());
        if (threshold.overThreshold(self)) {
            return true;
        }
        return false;
    }

}
