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
				aiEvent = new AIEvent(AIEventEnum.ReboundAttack, aoiEvent.getParam(), AITargetObjectCampEnum.team, source);	
			}else{
				aiEvent = new AIEvent(AIEventEnum.ReboundAttack, aoiEvent.getParam(), AITargetObjectCampEnum.enemy, source);	
			}			
			observer.getAiCompnent().onAoiActionEvent(aiEvent);
		}
		
		DmcSceneObject target = aoiEvent.getTarget();
		AITargetObjectCampEnum targetCamp = AITargetObjectCampEnum.team;
		if(!target.getType().equals(source.getType())){
			targetCamp = AITargetObjectCampEnum.enemy;
		}		
		AIEvent aiEvent = new AIEvent(AIEventEnum.ReboundAttack, aoiEvent.getParam(), targetCamp, source);	
		target.getAiCompnent().onAoiActionEvent(aiEvent);
	}

}
