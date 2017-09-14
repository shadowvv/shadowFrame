package com.game2sky.prilib.core.socket.logic.battle.newAi.event.aoiEvent;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEventEnum;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IDispatchAIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.target.AITargetObjectCampEnum;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * 弹刀
 * @author shadow
 *
 */
public class ReboundAttackDispatchAIEvent implements IDispatchAIEvent{

	@Override
	public void dispatchAIEvent(AOIEvent aoiEvent) {
		DmcSceneObject source = aoiEvent.getSource();
		for (DmcSceneObject observer : aoiEvent.getObservers()) {
			AIEvent aiEvent = null;
			if(observer.getType().equals(source.getType())){
				aiEvent = new AIEvent(AIEventEnum.ReboundAttack.getId(), aoiEvent.getParam(), AITargetObjectCampEnum.team.getId(), source);	
			}else{
				aiEvent = new AIEvent(AIEventEnum.ReboundAttack.getId(), aoiEvent.getParam(), AITargetObjectCampEnum.enemy.getId(), source);	
			}			
			observer.getAiCompnent().onAoiActionEvent(aiEvent);
		}
		
		DmcSceneObject target = aoiEvent.getTarget();
		int targetCamp = AITargetObjectCampEnum.team.getId();
		if(!target.getType().equals(source.getType())){
			targetCamp = AITargetObjectCampEnum.enemy.getId();
		}		
		AIEvent aiEvent = new AIEvent(AIEventEnum.ReboundAttack.getId(), aoiEvent.getParam(), targetCamp, source);	
		target.getAiCompnent().onAoiActionEvent(aiEvent);
		
		AIEvent selfEvent = new AIEvent(AIEventEnum.ReboundAttack.getId(), aoiEvent.getParam(), AITargetObjectCampEnum.self.getId(), source);			
		source.getAiCompnent().onAoiActionEvent(selfEvent);
	}

}
