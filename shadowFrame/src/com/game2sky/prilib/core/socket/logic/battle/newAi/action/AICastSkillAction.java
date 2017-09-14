package com.game2sky.prilib.core.socket.logic.battle.newAi.action;

import com.game2sky.prilib.core.dict.domain.DictHeroSkill;
import com.game2sky.prilib.core.socket.logic.battle.newAi.AITransfer;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEventEnum;
import com.game2sky.prilib.core.socket.logic.battle.newAi.target.AITargetObjectCampEnum;
import com.game2sky.prilib.core.socket.logic.battle.newAi.threshold.AIThresholdParam;
import com.game2sky.prilib.core.socket.logic.human.state.ActionState;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;
import com.game2sky.prilib.core.socket.logic.skill.ActiveSkill;
import com.game2sky.prilib.core.socket.logic.skill.SkillService;
import com.game2sky.publib.Globals;
import com.game2sky.publib.framework.boot.AMFrameWorkBoot;

/**
 * 释放技能动作
 * @author shadow
 *
 */
public class AICastSkillAction implements IAIAction{

	@Override
	public boolean doAction(DmcSceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		int skillId = Integer.parseInt(param.getParam());
		long now = Globals.getTimeService().now();
		self.getController().getComponentRoleSkill().initPrepareSkill(DictHeroSkill.getDictHeroSkill(skillId).getKind(), now);
		SkillService service = AMFrameWorkBoot.getBean(SkillService.class);
		service.useSkill(self, skillId, param.getActionTargetObjects(self).get(0));
		param.setDone(true);
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
		if (!self.getRoleStateManager().canEnter(ActionState.USING_SKILL)) {
			return false;
		}
		int skillId = Integer.parseInt(param.getParam());
		if(skillId == 0){
			return false;
		}		
		ActiveSkill useSkillCache = self.getController().getComponentRoleSkill().getUseSkillCache();
		if (useSkillCache != null && !useSkillCache.isOverdue() && useSkillCache.getTmplId() == skillId) {
			return false;
		}
		ActiveSkill skill = self.getController().getComponentRoleSkill().getActiveSkillById(skillId);
		if (skill == null) {
			return false;
		} 
		if (!self.getRoleActionManager().skillSelfCheck(skill)) {
			return false;
		}
		return true;
	}

	@Override
	public void stop(DmcSceneObject self) {
		self.getCurrentAction().setDone(true);
	}

	@Override
	public void reset(AIActionParam param) {
		
	}

	@Override
	public boolean isOver(DmcSceneObject self, AIActionParam param) {
		AIEvent event = new AIEvent(AIEventEnum.finishSkill.getId(), param.getParam(), AITargetObjectCampEnum.self.getId(), null);
		if(AITransfer.transfer(AIThresholdParam.EMPTY_THRESHOLD, event, self)){
			return true;
		}
		return false;
	}

}
