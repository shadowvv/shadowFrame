package com.shadowFrame.ai.transfer;

import java.util.List;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.aoiEvent.IAIAOIEvent;
import com.shadowFrame.ai.strategy.IAIStrategy;

public interface IAIStrategyTransferParam {
	
	int getStrategyId();
	
	int getTransferId();

	IAIStrategy transfer(SceneObject self, List<IAIAOIEvent> aoiEventList);

}
