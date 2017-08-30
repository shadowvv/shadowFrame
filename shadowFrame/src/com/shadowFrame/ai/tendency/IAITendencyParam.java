package com.shadowFrame.ai.tendency;

import com.shadowFrame.ai.action.IAIActionParam;
import com.shadowFrame.ai.event.IAIAOIEventParam;
import com.shadowFrame.ai.threshold.IAIThresholdParam;

public interface IAITendencyParam {
	
	int getPriorty();
	
	int getWeight();
	
	IAITendency getTendency();
	
	IAIThresholdParam getEnterTendencyThreshold();
	
	IAIAOIEventParam getEnterTendencyEvent();
	
	IAIActionParam getFirstAction();
	
}
