package com.shadowFrame.ai.action;

import java.util.Collection;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.event.AIEventEnum;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;
import com.shadowFrame.ai.tendency.AITendencyParam;

/**
 * 释放随机技能
 *
 * @author shadow
 * @version v0.1 2017年10月16日 上午10:37:17  shadow
 */
public class AICastHeroRandomSkillAction implements IAIAction{

	@Override
	public boolean doAction(DmcSceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		@SuppressWarnings("unused")
		int skillId = Integer.parseInt(param.getCurrentParam());
		return true;
	}

	@Override
	public boolean checkAction(DmcSceneObject self, AIActionParam param) {
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
	public void stop(DmcSceneObject self) {
		self.getComponentAI().getCurrentAction().setDone(true);
	}

	@Override
	public void reset(AIActionParam param,DmcSceneObject self, AITendencyParam currentTendency) {
		int skillId = 0;
		param.setCurrentParam(skillId+"");
	}

	@Override
	public boolean isOver(DmcSceneObject self, AIActionParam param,Collection<AIEvent> aiEvents) {
		AIEvent event = new AIEvent(AIEventEnum.finishSkill.getId(), param.getCurrentParam(), AITargetObjectCampEnum.self.getId(), null);
		for (AIEvent aoiEvent : aiEvents) {
			if(event.match(aoiEvent)){
				return true;
			}
		}
		return false;
	}

}
