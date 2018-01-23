package com.shadowFrame.ai.condition.event.aoiEvent;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.event.AIEventEnum;
import com.shadowFrame.ai.condition.event.IDispatchAIEvent;
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
		DmcSceneObject source = aoiEvent.getSource();
		for (DmcSceneObject observer : aoiEvent.getObservers()) {
			int dis = (int) SceneUtils.calcDis(observer.getPos(), source.getPos());
			if(dis < observer.getVigilanceRange()){
				AIEvent aiEvent = null;
				AIEvent backSelfEvent = null;
				if(observer.getCamp() == source.getCamp()){
					aiEvent = new AIEvent(AIEventEnum.EnterVigilanceRange.getId(), dis+"", AITargetObjectCampEnum.team.getId(), source);
					backSelfEvent = new AIEvent(AIEventEnum.EnterVigilanceRange.getId(), dis+"", AITargetObjectCampEnum.team.getId(),observer);	
				}else{
					aiEvent = new AIEvent(AIEventEnum.EnterVigilanceRange.getId(), dis+"", AITargetObjectCampEnum.enemy.getId(), source);
					backSelfEvent = new AIEvent(AIEventEnum.EnterVigilanceRange.getId(), dis+"", AITargetObjectCampEnum.enemy.getId(),observer);	
				}			
				observer.getComponentAI().onAoiActionEvent(aiEvent);
				source.getComponentAI().onAoiActionEvent(backSelfEvent);
			}
		}
	}

}
