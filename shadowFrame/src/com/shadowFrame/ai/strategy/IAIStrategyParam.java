package com.shadowFrame.ai.strategy;

import java.util.List;

import com.shadowFrame.ai.event.IAIAOIEventParam;
import com.shadowFrame.ai.tendency.IAITendencyParam;
import com.shadowFrame.ai.threshold.IAIThresholdParam;

public interface IAIStrategyParam {

	IAIStrategy getStrategy();
	
	IAIThresholdParam getEnterStrategyThreshold();
	
	IAIAOIEventParam getEnterStrategyEvent();
	
	void addTendency(IAITendencyParam tendency);
	
	List<IAITendencyParam> getTendencyList();

}
