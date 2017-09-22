package com.shadowFrame.ai.event.aoiEvent;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.event.AIEvent;
import com.shadowFrame.ai.event.AIEventEnum;
import com.shadowFrame.ai.event.IDispatchAIEvent;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;

/**
 * aoi移动事件派发ai事件
 * 
 * @author shadow
 *
 */
public class MoveDispatchAIEvent implements IDispatchAIEvent{

	@Override
	public void dispatchAIEvent(AOIEvent aoiEvent) {
		SceneObject source = aoiEvent.getSource();
		for (SceneObject observer : aoiEvent.getObservers()) {
			//TODO:距离
			int dis = 10;
			if(dis < observer.getVigilanceRange()){
				AIEvent aiEvent = null;
				AIEvent backSelfEvent = null;
				if(observer.getType() != source.getType()){
					aiEvent = new AIEvent(AIEventEnum.EnterVigilanceRange.getId(), dis+"", AITargetObjectCampEnum.team.getId(), source);
					backSelfEvent = new AIEvent(AIEventEnum.EnterVigilanceRange.getId(), dis+"", AITargetObjectCampEnum.team.getId(),observer);	
				}else{
					aiEvent = new AIEvent(AIEventEnum.EnterVigilanceRange.getId(), dis+"", AITargetObjectCampEnum.enemy.getId(), source);
					backSelfEvent = new AIEvent(AIEventEnum.EnterVigilanceRange.getId(), dis+"", AITargetObjectCampEnum.enemy.getId(),observer);	
				}			
				observer.getAiCompnent().onAoiActionEvent(aiEvent);
				source.getAiCompnent().onAoiActionEvent(backSelfEvent);
			}
		}
	}

}
