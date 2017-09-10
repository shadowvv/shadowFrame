package com.game2sky.prilib.core.socket.logic.battle.newAi.event.aoiEvent;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEventEnum;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IDispatchAIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.target.AITargetObjectCampEnum;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * 使用技能
 * @author shadow
 *
 */
public class UseSkillDispatchAIEvent implements IDispatchAIEvent{

	@Override
	public void dispatchAIEvent(AOIEvent aoiEvent) {
		DmcSceneObject source = aoiEvent.getSource();
		for (DmcSceneObject observer : aoiEvent.getObservers()) {
			AITargetObjectCampEnum targetCamp = AITargetObjectCampEnum.team;
			if(!observer.getType().equals(source.getType())){
				targetCamp = AITargetObjectCampEnum.enemy;
			}		
			AIEvent aiEvent = new AIEvent(AIEventEnum.UseSkill, aoiEvent.getParam(), targetCamp, source);	
			observer.getAiCompnent().onAoiActionEvent(aiEvent);
		}
	}

}
