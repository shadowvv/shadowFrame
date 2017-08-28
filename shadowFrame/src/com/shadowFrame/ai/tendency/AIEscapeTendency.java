package com.game2sky.prilib.core.socket.logic.battle.newAi.tendency;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.action.IAIActionParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIAOIEventParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

public class AIEscapeTendency implements IAITendency{

	@Override
	public boolean CanEnterTendency(DmcSceneObject self, List<IAIAOIEventParam> event,
			IAITendencyParam param) {
		// TODO 自动生成的方法存根
		return false;
	}

	@Override
	public void stop() {
		// TODO 自动生成的方法存根
		
	}

	@Override
	public IAIActionParam getNextAction(DmcSceneObject self, List<IAIAOIEventParam> event, IAITendencyParam param,
			IAIActionParam currentAction) {
		// TODO Auto-generated method stub
		return null;
	}

}
