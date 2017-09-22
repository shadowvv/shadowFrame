package com.shadowFrame.ai.action;

import com.shadowFrame.ai.AITransfer;
import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.event.AIEvent;
import com.shadowFrame.ai.event.AIEventEnum;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;
import com.shadowFrame.ai.threshold.AIThresholdParam;

/**
 * 释放技能动作
 * @author shadow
 *
 */
public class AICastSkillAction implements IAIAction{

	@Override
	public boolean doAction(SceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		@SuppressWarnings("unused")
		int skillId = Integer.parseInt(param.getParam());
		//TODO:释放技能
		param.setDone(true);
		return true;
	}

	@Override
	public boolean checkAction(SceneObject self, AIActionParam param) {
		if(param.isDone()){
			return false;
		}
		if(param.getActionTargetObjects(self).size() == 0){
			return false;
		}
		int skillId = Integer.parseInt(param.getParam());
		if(skillId == 0){
			return false;
		}
		return true;
	}

	@Override
	public void stop(SceneObject self) {
		self.getAiCompnent().getCurrentAction().setDone(true);
	}

	@Override
	public void reset(AIActionParam param) {
		
	}

	@Override
	public boolean isOver(SceneObject self, AIActionParam param) {
		AIEvent event = new AIEvent(AIEventEnum.finishSkill.getId(), param.getParam(), AITargetObjectCampEnum.self.getId(), null);
		if(AITransfer.transfer(AIThresholdParam.EMPTY_THRESHOLD, event, self)){
			return true;
		}
		return false;
	}

}
