package com.shadowFrame.ai.condition.event.aoiEvent;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.event.AIEventEnum;
import com.shadowFrame.ai.condition.event.IDispatchAIEvent;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;

/**
 * 结束技能
 *
 * @author shadow
 */
public class FinishSkillDispatchAIEvent implements IDispatchAIEvent {

    @Override
    public void dispatchAIEvent(AOIEvent aoiEvent) {
        SceneObject source = aoiEvent.getSource();
        for (SceneObject observer : aoiEvent.getObservers()) {
            int targetCamp = AITargetObjectCampEnum.team.getId();
            if (observer.getCamp() != source.getCamp()) {
                targetCamp = AITargetObjectCampEnum.enemy.getId();
            }
            AIEvent aiEvent = new AIEvent(AIEventEnum.finishSkill.getId(), aoiEvent.getParam(), targetCamp, source);
            observer.getComponentAI().onAoiActionEvent(aiEvent);
        }
        AIEvent aiEvent = new AIEvent(AIEventEnum.finishSkill.getId(), aoiEvent.getParam(), AITargetObjectCampEnum.self.getId(), source);
        source.getComponentAI().onAoiActionEvent(aiEvent);
    }

}
