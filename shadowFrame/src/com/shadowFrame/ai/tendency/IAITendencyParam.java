package com.shadowFrame.ai.tendency;

import java.util.List;

import com.shadowFrame.ai.action.IAIAction;
import com.shadowFrame.ai.aoiEvent.IAIAOIEvent;

public interface IAITendencyParam {
	
	List<IAIAOIEvent> getWaitingEvents();
	
	IAIAction getNextAction();
	
}
