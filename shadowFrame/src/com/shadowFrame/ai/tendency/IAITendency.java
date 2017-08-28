package com.game2sky.prilib.core.socket.logic.battle.newAi.tendency;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.action.IAIActionParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIAOIEventParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;


public interface IAITendency {
	
	boolean CanEnterTendency(DmcSceneObject self,List<IAIAOIEventParam> event,IAITendencyParam param);

	IAIActionParam getNextAction(DmcSceneObject self,List<IAIAOIEventParam> event,IAITendencyParam param, IAIActionParam currentAction);

	void stop();
	
}
