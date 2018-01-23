package com.shadowFrame.ai.condition.event.aoiEvent;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.event.AIEventEnum;
import com.shadowFrame.ai.condition.event.IDispatchAIEvent;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;

/**
 * 结算buff
 * @author shadow
 *
 */
public class BuffTickDispatchAIEvent implements IDispatchAIEvent{

	@Override
	public void dispatchAIEvent(AOIEvent aoiEvent) {
		DmcSceneObject source = aoiEvent.getSource();
		for (DmcSceneObject observer : aoiEvent.getObservers()) {
			int targetCamp = AITargetObjectCampEnum.team.getId();
			if(observer.getCamp() != source.getCamp()){
				targetCamp = AITargetObjectCampEnum.enemy.getId();
			}		
			AIEvent aiEvent = new AIEvent(AIEventEnum.BuffTick.getId(), aoiEvent.getParam(), targetCamp, source);			
			observer.getComponentAI().onAoiActionEvent(aiEvent);
		}
		AIEvent aiEvent = new AIEvent(AIEventEnum.BuffTick.getId(), aoiEvent.getParam(), AITargetObjectCampEnum.self.getId(), source);			
		source.getComponentAI().onAoiActionEvent(aiEvent);
	}

}
