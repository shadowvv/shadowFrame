package com.shadowFrame.ai.action;

import com.shadowFrame.ai.AITransfer;
import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.event.AIEvent;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;
import com.shadowFrame.ai.threshold.AIThresholdEnum;
import com.shadowFrame.ai.threshold.AIThresholdParam;
import com.shadowFrame.ai.threshold.AIValueCompareEnum;

/**
 * 围绕场景物体公转动作
 * @author shadow
 *
 */
public class AIRevolutionToObjectAction implements IAIAction{

	@Override
	public boolean doAction(SceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		@SuppressWarnings("unused")
		SceneObject target = param.getActionTargetObjects(self).get(0);
		return false;
	}

	@Override
	public boolean checkAction(SceneObject self, AIActionParam param) {
		SceneObject target = param.getActionTargetObjects(self).get(0);
		if (target == null) {
			return false;
		}
		return true;
	}

	@Override
	public void stop(SceneObject self) {

	}

	@Override
	public void reset(AIActionParam param) {
		
	}

	@Override
	public boolean isOver(SceneObject self, AIActionParam param) {
		AIThresholdParam threshold = new AIThresholdParam(AIThresholdEnum.ActionDuation.getId(), Double.parseDouble(param.getParam()), AITargetObjectCampEnum.self.getId(), AIValueCompareEnum.NotSmaller.getId());
		if(AITransfer.transfer(threshold, AIEvent.EMPTY_EVENT, self)){
			return true;
		}
		return false;
	}

}
