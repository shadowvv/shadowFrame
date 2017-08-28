package com.shadowFrame.ai.transfer;

import java.util.List;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.aoiEvent.IAIAOIEvent;

public interface IAITransfer {

	boolean transfer(SceneObject self, List<IAIAOIEvent> aoiEventList);

}
