package com.game2sky.prilib.core.socket.logic.battle.newAi.strategy;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIAOIEventParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.tendency.IAITendencyParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.threshold.IAIThresholdParam;

public interface IAIStrategyParam {

	IAIStrategy getStrategy();
	
	IAIThresholdParam getEnterStrategyThreshold();
	
	IAIAOIEventParam getEnterStrategyEvent();
	
	void addTendency(IAITendencyParam tendency);
	
	List<IAITendencyParam> getTendencyList();

}
