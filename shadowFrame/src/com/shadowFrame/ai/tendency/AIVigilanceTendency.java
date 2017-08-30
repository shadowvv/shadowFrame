package com.shadowFrame.ai.tendency;

import java.util.List;

import com.shadowFrame.ai.AITransfer;
import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.action.IAIActionParam;
import com.shadowFrame.ai.event.IAIAOIEventParam;

public class AIVigilanceTendency implements IAITendency {

	@Override
	public boolean CanEnterTendency(DmcSceneObject self, List<IAIAOIEventParam> event,IAITendencyParam param) {
		if (AITransfer.transfer(param.getEnterTendencyThreshold(), param.getEnterTendencyEvent(), self,event)) {
			return true;
		}
		return false; 
	}

	@Override
	public void stop() {
		
	}

	@Override
	public IAIActionParam getNextAction(DmcSceneObject self, List<IAIAOIEventParam> event, IAITendencyParam param,IAIActionParam currentAction) {
		IAIActionParam nextAction = null;
		if(currentAction == null){
			nextAction = param.getFirstAction();
			nextAction.resetParam();
			return nextAction;
		}
		nextAction = currentAction.getNextActionParam();
		if(nextAction != null){
			if (AITransfer.transfer(nextAction.getWaitingThreshold(), nextAction.getWaitingEvent(), self,event)) {
				nextAction.resetParam();
				return nextAction;
			}else{
				return currentAction;
			}
		}
		return nextAction;
	}

}
