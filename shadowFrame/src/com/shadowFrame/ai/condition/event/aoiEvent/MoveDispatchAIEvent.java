package com.shadowFrame.ai.condition.event.aoiEvent;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.event.AIEventEnum;
import com.shadowFrame.ai.condition.event.IDispatchAIEvent;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;

/**
 * aoi移动事件派发ai事件
 *
 * @author shadow
 */
public class MoveDispatchAIEvent implements IDispatchAIEvent {

    @Override
    public void dispatchAIEvent(AOIEvent aoiEvent) {
        SceneObject source = aoiEvent.getSource();
        for (SceneObject observer : aoiEvent.getObservers()) {
            int dis = 0;
            if (dis < observer.getVigilanceRange()) {
                AIEvent aiEvent = null;
                AIEvent backSelfEvent = null;
                if (observer.getCamp() == source.getCamp()) {
                    aiEvent = new AIEvent(AIEventEnum.EnterVigilanceRange.getId(), dis + "", AITargetObjectCampEnum.team.getId(), source);
                    backSelfEvent = new AIEvent(AIEventEnum.EnterVigilanceRange.getId(), dis + "", AITargetObjectCampEnum.team.getId(), observer);
                } else {
                    aiEvent = new AIEvent(AIEventEnum.EnterVigilanceRange.getId(), dis + "", AITargetObjectCampEnum.enemy.getId(), source);
                    backSelfEvent = new AIEvent(AIEventEnum.EnterVigilanceRange.getId(), dis + "", AITargetObjectCampEnum.enemy.getId(), observer);
                }
                observer.getComponentAI().onAoiActionEvent(aiEvent);
                source.getComponentAI().onAoiActionEvent(backSelfEvent);
            }
        }
    }

}
