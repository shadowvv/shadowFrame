package com.game2sky.prilib.core.socket.logic.battle.newAi.event;

import com.game2sky.prilib.core.socket.logic.battle.newAi.target.AITargetObjectCampEnum;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;
import com.game2sky.prilib.core.socket.logic.scene.unit.monster.SceneMonsterObject;
import com.game2sky.publib.socket.logic.scene.SceneUtils;

/**
 * aoi移动事件派发ai事件
 * @author shadow
 *
 */
public class MoveDispatchAIEvent implements IDispatchAIEvent{

	@Override
	public void dispatchAIEvent(AOIEvent aoiEvent) {
		DmcSceneObject source = aoiEvent.getSource();
		for (DmcSceneObject observer : aoiEvent.getObservers()) {
			if(observer instanceof SceneMonsterObject){
				int dis = (int) SceneUtils.calcDis(observer.getPos(), source.getPos());
				AIEvent aiEvent = new AIEvent(AIEventEnum.Range, dis, AITargetObjectCampEnum.enemy,source);
				aiEvent.setSource(source);
				observer.getAiCompnent().onAoiActionEvent(aiEvent);
			}
		}
		
	}

}
