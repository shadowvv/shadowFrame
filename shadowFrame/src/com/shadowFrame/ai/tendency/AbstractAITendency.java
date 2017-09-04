package com.game2sky.prilib.core.socket.logic.battle.newAi.tendency;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.AITransfer;
import com.game2sky.prilib.core.socket.logic.battle.newAi.action.AOIActionParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIEvent;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * ai行为基类
 * @author shadow
 *
 */
public abstract class AbstractAITendency implements IAITendency{

	@Override
	public boolean CanEnterTendency(DmcSceneObject self, List<IAIEvent> event,AITendencyParam param) {
		if (AITransfer.transfer(param.getEnterTendencyThreshold(), param.getEnterTendencyEvent(), self,event)) {
			return true;
		}
		return false; 
	}

	@Override
	public void stop() {
		
	}

	@Override
	public AOIActionParam getNextAction(DmcSceneObject self, List<IAIEvent> event, AITendencyParam param,AOIActionParam currentAction) {
		AOIActionParam nextAction = null;
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
