package com.shadowFrame.ai.action;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.event.AIEventEnum;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;
import com.shadowFrame.ai.tendency.AITendencyParam;
import com.shadowFrame.util.MathUtil;

import java.util.Collection;

/**
 * 选择并释放技能
 *
 * @author shadow
 * @version v0.1 2017年11月7日 下午7:06:17  shadow
 */
public class AISelectAndCastSkill implements IAIAction {

    @Override
    public boolean doAction(SceneObject self, AIActionParam param) {
        if (!checkAction(self, param)) {
            return false;
        }
        @SuppressWarnings("unused")
        int skillId = Integer.parseInt(param.getCurrentParam());
        param.setDone(true);
        return true;
    }

    @Override
    public boolean checkAction(SceneObject self, AIActionParam param) {
        if (param.isDone()) {
            return false;
        }
        if (param.getActionTargetObjects(self).size() == 0) {
            return false;
        }
        int skillId = Integer.parseInt(param.getCurrentParam());
        if (skillId == 0) {
            return false;
        }
        return true;
    }

    @Override
    public void stop(SceneObject self) {
        self.getComponentAI().getCurrentAction().setDone(true);
    }

    @Override
    public void reset(AIActionParam param, SceneObject self, AITendencyParam currentTendency) {
        String[] params = param.getParam().split(";");
        int[] ks = new int[params.length];
        int[] vs = new int[params.length];
        for (int i = 0; i < params.length; i++) {
            String k_v = params[i];
            String[] kv = k_v.split(":");
            ks[i] = Integer.parseInt(kv[0]);
            vs[i] = Integer.parseInt(kv[1]);
        }
        int index = MathUtil.randomSelectByFrequency(vs);
        param.setCurrentParam(ks[index] + "");
    }

    @Override
    public boolean isOver(SceneObject self, AIActionParam param, Collection<AIEvent> aiEvents) {
        AIEvent event = new AIEvent(AIEventEnum.finishSkill.getId(), param.getCurrentParam(), AITargetObjectCampEnum.self.getId(), null);
        for (AIEvent aoiEvent : aiEvents) {
            if (event.match(aoiEvent)) {
                return true;
            }
        }
        return false;
    }

}
