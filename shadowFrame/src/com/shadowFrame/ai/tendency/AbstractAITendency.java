package com.shadowFrame.ai.tendency;

import com.shadowFrame.ai.AITransfer;
import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.action.AIActionParam;

/**
 * ai行为基类
 * @author shadow
 *
 */
public abstract class AbstractAITendency implements IAITendency{

	@Override
	public boolean CanEnterTendency(SceneObject self,AITendencyParam param) {
		if (AITransfer.transfer(param.getEnterTendencyThresholds(), param.getEnterTendencyEvents(), self)) {
			return true;
		}
		return false;
	}

	@Override
	public AIActionParam getNextAction(SceneObject self, AITendencyParam param,AIActionParam currentAction) {
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
	public boolean isOver(SceneObject self, AITendencyParam param) {
		if((param.getOverThresholds() == null || param.getOverThresholds().size() == 0) && (param.getOverEvents() == null || param.getOverEvents().size() == 0)){
			return false;
		}
		if (AITransfer.transfer(param.getOverThresholds(), param.getOverEvents(), self)) {
			return true;
		}
		return false;
	}

}
