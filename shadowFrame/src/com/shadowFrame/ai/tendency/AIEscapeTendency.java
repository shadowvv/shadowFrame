package com.shadowFrame.ai.tendency;

import java.util.List;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.action.IAIActionParam;
import com.shadowFrame.ai.event.IAIAOIEventParam;

public class AIEscapeTendency implements IAITendency{

	@Override
	public boolean CanEnterTendency(DmcSceneObject self, List<IAIAOIEventParam> event,
			IAITendencyParam param) {
		// TODO 自动生成的方法存根
		return false;
	}

	@Override
	public void stop() {
		// TODO 自动生成的方法存根
		
	}

	@Override
	public IAIActionParam getNextAction(DmcSceneObject self, List<IAIAOIEventParam> event, IAITendencyParam param,
			IAIActionParam currentAction) {
		// TODO Auto-generated method stub
		return null;
	}

}
