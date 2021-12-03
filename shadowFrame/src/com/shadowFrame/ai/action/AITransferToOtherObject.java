package com.shadowFrame.ai.action;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.tendency.AITendencyParam;

import java.util.Collection;

/**
 * ai 转变为其他单位
 *
 * @author shadow
 * @version v0.1 2017年10月25日 下午2:58:39  shadow
 */
public class AITransferToOtherObject implements IAIAction {

    @Override
    public boolean doAction(SceneObject self, AIActionParam param) {
        if (!checkAction(self, param)) {
            return false;
        }
        @SuppressWarnings("unused")
        int dictId = Integer.parseInt(param.getCurrentParam());
        return true;
    }

    @Override
    public boolean checkAction(SceneObject self, AIActionParam param) {
        return true;
    }

    @Override
    public void stop(SceneObject self) {

    }

    @Override
    public void reset(AIActionParam param, SceneObject self, AITendencyParam currentTendency) {
        param.setCurrentParam(param.getParam());
    }

    @Override
    public boolean isOver(SceneObject self, AIActionParam param, Collection<AIEvent> aiEvents) {
        return true;
    }

}
