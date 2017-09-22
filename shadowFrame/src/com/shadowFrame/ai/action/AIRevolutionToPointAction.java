package com.shadowFrame.ai.action;

import com.shadowFrame.ai.AITransfer;
import com.shadowFrame.ai.FPoint3;
import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.event.AIEvent;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;
import com.shadowFrame.ai.threshold.AIThresholdEnum;
import com.shadowFrame.ai.threshold.AIThresholdParam;
import com.shadowFrame.ai.threshold.AIValueCompareEnum;

/**
 * 围绕场景点公转动作
 * @author shadow
 *
 */
public class AIRevolutionToPointAction implements IAIAction{

	@Override
	public boolean doAction(SceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		@SuppressWarnings("unused")
		FPoint3 target = param.getActionTargetPoints().get(0);
		return false;
	}

	@Override
	public boolean checkAction(SceneObject self, AIActionParam param) {
		FPoint3 target = param.getActionTargetPoints().get(0);
		if (target == null) {
			return false;
		}
		return false;
	}

	@Override
	public void stop(SceneObject self) {

	}

	@Override
	public void reset(AIActionParam param) {
		String[] params = param.getParam().split(",");
		FPoint3 target = new FPoint3(Float.parseFloat(params[0]), Float.parseFloat(params[1]), Float.parseFloat(params[2]));
		param.getActionTargetPoints().clear();
		param.getActionTargetPoints().add(target);
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
