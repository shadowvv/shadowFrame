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
			return nextAction;
		}
		nextAction = currentAction.getNextActionParam();
		if(nextAction != null){
			if (AITransfer.transfer(nextAction.getEnterThresholds(), nextAction.getEnterEvents(), self)) {
				return nextAction;
			}else{
				return currentAction;
			}
		}
		return nextAction;
	}
	
	@Override
	public boolean isOver(DmcSceneObject self, AITendencyParam param) {
		if((param.getOverThresholds() == null || param.getOverThresholds().size() == 0) && (param.getOverEvents() == null || param.getOverEvents().size() == 0)){
			return false;
		}
		if (AITransfer.transfer(param.getOverThresholds(), param.getOverEvents(), self)) {
			return true;
		}
		return false;
	}

}
