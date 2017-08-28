package com.game2sky.prilib.core.socket.logic.battle.newAi.tendency;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.AITransfer;
import com.game2sky.prilib.core.socket.logic.battle.newAi.action.IAIActionParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIAOIEventParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

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
