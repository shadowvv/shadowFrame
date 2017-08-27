package com.shadowFrame.ai.tendency;

import java.util.List;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.action.IAIActionParam;
import com.shadowFrame.ai.aoiEvent.IAIAOIEvent;


public interface IAITendency {
	
	boolean CanEnterTendency(SceneObject self,List<IAIAOIEvent> event,IAITendencyParam param);

	IAIActionParam getNextAction(SceneObject self,List<IAIAOIEvent> event,IAITendencyParam param);

	void stop();
	
}
