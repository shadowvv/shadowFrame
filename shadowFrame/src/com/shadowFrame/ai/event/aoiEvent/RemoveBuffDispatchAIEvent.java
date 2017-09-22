package com.shadowFrame.ai.event.aoiEvent;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.event.AIEvent;
import com.shadowFrame.ai.event.AIEventEnum;
import com.shadowFrame.ai.event.IDispatchAIEvent;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;

/**
 * 移除buff
 * @author shadow
 *
 */
public class RemoveBuffDispatchAIEvent implements IDispatchAIEvent{

	@Override
	public void dispatchAIEvent(AOIEvent aoiEvent) {
		SceneObject source = aoiEvent.getSource();
		for (SceneObject observer : aoiEvent.getObservers()) {
			int targetCamp = AITargetObjectCampEnum.team.getId();
			if(observer.getType() != source.getType()){
				targetCamp = AITargetObjectCampEnum.enemy.getId();
			}		
			AIEvent aiEvent = new AIEvent(AIEventEnum.RemoveBuff.getId(), aoiEvent.getParam(), targetCamp, source);			
			observer.getAiCompnent().onAoiActionEvent(aiEvent);
		}
		AIEvent aiEvent = new AIEvent(AIEventEnum.RemoveBuff.getId(), aoiEvent.getParam(), AITargetObjectCampEnum.self.getId(), source);			
		source.getAiCompnent().onAoiActionEvent(aiEvent);
	}

}
