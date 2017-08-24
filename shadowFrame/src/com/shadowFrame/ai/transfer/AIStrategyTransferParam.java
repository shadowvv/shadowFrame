package com.shadowFrame.ai.transfer;

import java.util.List;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.aoiEvent.IAIAOIEvent;
import com.shadowFrame.ai.strategy.IAIStrategy;

public class AIStrategyTransferParam implements IAIStrategyTransferParam {

	@Override
	public IAIStrategy transfer(SceneObject self, List<IAIAOIEvent> aoiEventList) {
		IAIStrategy strategy = null;
		IAITransfer transfer = null;
		if(transfer.transfer(self,aoiEventList)){
			strategy = null;
		}
		return strategy;
	}

	@Override
	public int getStrategyId() {
		return 0;
	}

	@Override
	public int getTransferId() {
		return 0;
	}

}
