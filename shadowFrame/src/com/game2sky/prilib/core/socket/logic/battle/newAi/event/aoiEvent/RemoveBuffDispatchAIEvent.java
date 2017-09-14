package com.game2sky.prilib.core.socket.logic.battle.newAi.event.aoiEvent;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEventEnum;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IDispatchAIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.target.AITargetObjectCampEnum;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * 移除buff
 * @author shadow
 *
 */
public class RemoveBuffDispatchAIEvent implements IDispatchAIEvent{

	@Override
	public void dispatchAIEvent(AOIEvent aoiEvent) {
		DmcSceneObject source = aoiEvent.getSource();
		for (DmcSceneObject observer : aoiEvent.getObservers()) {
			int targetCamp = AITargetObjectCampEnum.team.getId();
			if(!observer.getType().equals(source.getType())){
				targetCamp = AITargetObjectCampEnum.enemy.getId();
			}		
			AIEvent aiEvent = new AIEvent(AIEventEnum.RemoveBuff.getId(), aoiEvent.getParam(), targetCamp, source);			
			observer.getAiCompnent().onAoiActionEvent(aiEvent);
		}
		AIEvent aiEvent = new AIEvent(AIEventEnum.RemoveBuff.getId(), aoiEvent.getParam(), AITargetObjectCampEnum.self.getId(), source);			
		source.getAiCompnent().onAoiActionEvent(aiEvent);
	}

}
