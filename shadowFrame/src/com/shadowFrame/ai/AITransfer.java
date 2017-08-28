package com.game2sky.prilib.core.socket.logic.battle.newAi;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIAOIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIAOIEventParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.threshold.IAIThresholdParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

public class AITransfer {

	public static boolean transfer(IAIThresholdParam threshold, IAIAOIEventParam event, DmcSceneObject self, List<IAIAOIEventParam> aoiEventList) {
		return false;
	}

	public static boolean transfer(IAIThresholdParam waitingThreshold, List<IAIAOIEvent> waitingEvent, DmcSceneObject self,
			List<IAIAOIEventParam> event) {
		// TODO Auto-generated method stub
		return false;
	}

}
