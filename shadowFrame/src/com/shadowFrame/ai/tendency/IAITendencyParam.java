package com.game2sky.prilib.core.socket.logic.battle.newAi.tendency;

import com.game2sky.prilib.core.socket.logic.battle.newAi.action.IAIActionParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIAOIEventParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.threshold.IAIThresholdParam;

public interface IAITendencyParam {
	
	int getPriorty();
	
	int getWeight();
	
	IAITendency getTendency();
	
	IAIThresholdParam getEnterTendencyThreshold();
	
	IAIAOIEventParam getEnterTendencyEvent();
	
	IAIActionParam getFirstAction();
	
}
