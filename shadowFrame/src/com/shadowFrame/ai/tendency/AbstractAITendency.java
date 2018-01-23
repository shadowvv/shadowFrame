package com.shadowFrame.ai.tendency;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.action.AIActionParam;

/**
 * ai行为基类
 * @author shadow
 *
 */
public abstract class AbstractAITendency implements IAITendency{

	@Override
	public AIActionParam getNextAction(DmcSceneObject self, AITendencyParam param,AIActionParam currentAction) {
		AIActionParam nextAction = null;
		if(currentAction == null){
			nextAction = param.getFirstAction();
			return nextAction;
		}
		nextAction = currentAction.getNextActionParam();
		if(nextAction != null){
			return nextAction;
		}
		return nextAction;
	}

}
