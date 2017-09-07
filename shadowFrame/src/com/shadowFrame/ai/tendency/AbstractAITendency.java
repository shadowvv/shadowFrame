package com.game2sky.prilib.core.socket.logic.battle.newAi.tendency;

import com.game2sky.prilib.core.socket.logic.battle.newAi.AITransfer;
import com.game2sky.prilib.core.socket.logic.battle.newAi.action.AIActionParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * ai行为基类
 * @author shadow
 *
 */
public abstract class AbstractAITendency implements IAITendency{

	@Override
	public boolean CanEnterTendency(DmcSceneObject self,AITendencyParam param) {
		if (AITransfer.transfer(param.getEnterTendencyThresholds(), param.getEnterTendencyEvents(), self)) {
			return true;
		}
		return false;
	}

	@Override
	public AIActionParam getNextAction(DmcSceneObject self, AITendencyParam param,AIActionParam currentAction) {
		AIActionParam nextAction = null;
		if(currentAction == null){
			nextAction = param.getFirstAction();
			nextAction.resetParam();
			return nextAction;
		}
		nextAction = currentAction.getNextActionParam();
		if(nextAction != null){
			if (AITransfer.transfer(nextAction.getWaitingThresholds(), nextAction.getWaitingEvents(), self)) {
				nextAction.resetParam();
				return nextAction;
			}else{
				return currentAction;
			}
		}
		return nextAction;
	}

}
