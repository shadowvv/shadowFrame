package com.shadowFrame.ai.tendency;

import java.util.List;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.action.IAIActionParam;
import com.shadowFrame.ai.event.IAIAOIEventParam;


public interface IAITendency {
	
	boolean CanEnterTendency(DmcSceneObject self,List<IAIAOIEventParam> event,IAITendencyParam param);

	IAIActionParam getNextAction(DmcSceneObject self,List<IAIAOIEventParam> event,IAITendencyParam param, IAIActionParam currentAction);

	void stop();
	
}
