package com.game2sky.prilib.core.socket.logic.battle.newAi.event.aoiEvent;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEventEnum;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IDispatchAIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.target.AITargetObjectCampEnum;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;
import com.game2sky.publib.socket.logic.scene.SceneUtils;

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
				if(observer.getType().equals(source.getType())){
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
