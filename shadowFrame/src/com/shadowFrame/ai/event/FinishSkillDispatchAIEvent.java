package com.game2sky.prilib.core.socket.logic.battle.newAi.event;

import com.game2sky.prilib.core.socket.logic.battle.newAi.target.AITargetObjectCampEnum;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

public class FinishSkillDispatchAIEvent implements IAOI2AIEvent{

	@Override
	public void dispatchAIEvent(AOIEvent aoiEvent) {
		DmcSceneObject source = aoiEvent.getSource();
		AIEvent aiEvent = new AIEvent(AIEventEnum.finishSkill, Integer.parseInt(aoiEvent.getParam()), AITargetObjectCampEnum.self,source);
		
		source.getAiCompnent().onAoiActionEvent(aiEvent);
		for (DmcSceneObject observer : aoiEvent.getObservers()) {
			observer.getAiCompnent().onAoiActionEvent(aiEvent);
		}
		for (DmcSceneObject target : aoiEvent.getTargets()) {
			target.getAiCompnent().onAoiActionEvent(aiEvent);
		}
	}

}
