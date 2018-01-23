package com.shadowFrame.ai.condition.event.aoiEvent;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.event.AIEventEnum;
import com.shadowFrame.ai.condition.event.IDispatchAIEvent;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;

/**
 * 结算技能
 * @author shadow
 *
 */
public class ReleaseSkillDispatchAIEvent implements IDispatchAIEvent{

	@Override
	public void dispatchAIEvent(AOIEvent aoiEvent) {
		DmcSceneObject source = aoiEvent.getSource();
		for (DmcSceneObject observer : aoiEvent.getObservers()) {
			int targetCamp = AITargetObjectCampEnum.team.getId();
			if(observer.getCamp() != source.getCamp()){
				targetCamp = AITargetObjectCampEnum.enemy.getId();
			}		
			AIEvent aiEvent = new AIEvent(AIEventEnum.ReleaseSkill.getId(), aoiEvent.getParam(), targetCamp, source);			
			observer.getComponentAI().onAoiActionEvent(aiEvent);
		}
		
		DmcSceneObject target = aoiEvent.getTarget();
		int targetCamp = AITargetObjectCampEnum.team.getId();
		if(target.getCamp() != source.getCamp()){
			targetCamp = AITargetObjectCampEnum.enemy.getId();
		}		
		AIEvent aiEvent = new AIEvent(AIEventEnum.ReleaseSkill.getId(), aoiEvent.getParam(), targetCamp, source);	
		target.getComponentAI().onAoiActionEvent(aiEvent);
		
		AIEvent selfEvent = new AIEvent(AIEventEnum.ReleaseSkill.getId(), aoiEvent.getParam(), AITargetObjectCampEnum.self.getId(), source);			
		source.getComponentAI().onAoiActionEvent(selfEvent);
	}

}
