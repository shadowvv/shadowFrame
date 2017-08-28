package com.shadowFrame.ai.tendency;

import java.util.List;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.action.IAIActionParam;
import com.shadowFrame.ai.aoiEvent.IAIAOIEvent;

public class AIVigilanceTendency implements IAITendency {

	@Override
	public IAIActionParam getNextAction(SceneObject self,
			List<IAIAOIEvent> event, IAITendencyParam param) {
		// TODO 自动生成的方法存根
		return null;
	}

	@Override
	public boolean CanEnterTendency(SceneObject self, List<IAIAOIEvent> event,
			IAITendencyParam param) {
		// TODO 自动生成的方法存根
		return false;
	}

	@Override
	public void stop() {
		// TODO 自动生成的方法存根
		
	}

}
