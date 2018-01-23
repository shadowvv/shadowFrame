package com.shadowFrame.ai.action;

import java.util.Collection;

import com.shadowFrame.ai.FPoint3;
import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.threshold.AIThresholdEnum;
import com.shadowFrame.ai.condition.threshold.AIThresholdParam;
import com.shadowFrame.ai.condition.threshold.AIValueCompareEnum;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;
import com.shadowFrame.ai.tendency.AITendencyParam;
import com.shadowFrame.util.MathUtil;

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
	public void reset(AIActionParam param,SceneObject self, AITendencyParam currentTendency) {
		String[] params = param.getParam().split(",");
		FPoint3 target = new FPoint3(Float.parseFloat(params[0]), Float.parseFloat(params[1]), Float.parseFloat(params[2]));
		param.getActionTargetPoints().clear();
		param.getActionTargetPoints().add(target);
		param.setCurrentParam(param.getParam() + ":" + MathUtil.randomSign());
	}

	@Override
	public boolean isOver(SceneObject self, AIActionParam param,Collection<AIEvent> aiEvents) {
		int time = Integer.parseInt(param.getCurrentParam().split(":")[1]);
		AIThresholdParam threshold = new AIThresholdParam(AIThresholdEnum.ActionDuation.getId(), time, AITargetObjectCampEnum.self.getId(), AIValueCompareEnum.NotSmaller.getId());
		if(threshold.overThreshold(self)){
			return true;
		}
		return false;
	}

}
