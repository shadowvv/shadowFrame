package com.shadowFrame.ai.condition.event.aoiEvent;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.event.AIEventEnum;
import com.shadowFrame.ai.condition.event.IDispatchAIEvent;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;

/**
 * 弹刀
 *
 * @author shadow
 */
public class ReboundAttackDispatchAIEvent implements IDispatchAIEvent {

    @Override
    public void dispatchAIEvent(AOIEvent aoiEvent) {
        SceneObject source = aoiEvent.getSource();
        for (SceneObject observer : aoiEvent.getObservers()) {
            AIEvent aiEvent = null;
            if (observer.getCamp() != source.getCamp()) {
                aiEvent = new AIEvent(AIEventEnum.ReboundAttack.getId(), aoiEvent.getParam(), AITargetObjectCampEnum.team.getId(), source);
            } else {
                aiEvent = new AIEvent(AIEventEnum.ReboundAttack.getId(), aoiEvent.getParam(), AITargetObjectCampEnum.enemy.getId(), source);
            }
            observer.getComponentAI().onAoiActionEvent(aiEvent);
        }

        SceneObject target = aoiEvent.getTarget();
        int targetCamp = AITargetObjectCampEnum.team.getId();
        if (target.getCamp() != source.getCamp()) {
            targetCamp = AITargetObjectCampEnum.enemy.getId();
        }
        AIEvent aiEvent = new AIEvent(AIEventEnum.ReboundAttack.getId(), aoiEvent.getParam(), targetCamp, source);
        target.getComponentAI().onAoiActionEvent(aiEvent);

        AIEvent selfEvent = new AIEvent(AIEventEnum.ReboundAttack.getId(), aoiEvent.getParam(), AITargetObjectCampEnum.self.getId(), source);
        source.getComponentAI().onAoiActionEvent(selfEvent);
    }

}
