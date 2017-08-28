package com.shadowFrame.ai.tendency;

import com.shadowFrame.ai.action.IAIActionParam;
import com.shadowFrame.ai.aoiEvent.IAIAOIEvent;
import com.shadowFrame.ai.threshold.IAIThreshold;

public interface IAITendencyParam {
	
	int getTendencyId();
	
	int getPriorty();
	
	int getWeight();
	
	IAIThreshold getEnterTendencyThreshold();
	
	IAIAOIEvent getEnterTendencyEvent();
	
	IAIActionParam getHeadAction();
	
	IAIActionParam getMiddleAction();
	
	IAIActionParam getTailAction();
	
}
