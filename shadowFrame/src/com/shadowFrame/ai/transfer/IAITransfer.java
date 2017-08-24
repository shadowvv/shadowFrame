package com.shadowFrame.ai.transfer;

import java.util.List;

import com.shadowFrame.ai.aoiEvent.IAIAOIEvent;
import com.shadowFrame.ai.strategy.IAIStrategy;

public interface IAITransfer {

	IAIStrategy transfer(List<IAIAOIEvent> aoiEventList);

}
