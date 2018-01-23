package com.shadowFrame.ai.action;

import java.util.Collection;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.event.AIEventEnum;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;
import com.shadowFrame.ai.tendency.AITendencyParam;

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
		int skillId = Integer.parseInt(param.getCurrentParam());
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
		int skillId = Integer.parseInt(param.getCurrentParam());
		if(skillId == 0){
			return false;
		}		
		return true;
	}

	@Override
	public void stop(SceneObject self) {
		self.getComponentAI().getCurrentAction().setDone(true);
	}

	@Override
	public void reset(AIActionParam param,SceneObject self, AITendencyParam currentTendency) {

	}

	@Override
	public boolean isOver(SceneObject self, AIActionParam param,Collection<AIEvent> aiEvents) {
		AIEvent event = new AIEvent(AIEventEnum.finishSkill.getId(), param.getCurrentParam(), AITargetObjectCampEnum.self.getId(), null);
		for (AIEvent aoiEvent : aiEvents) {
			if(event.match(aoiEvent)){
				return true;
			}
		}
		return false;
	}

}
