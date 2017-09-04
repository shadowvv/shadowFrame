package com.game2sky.prilib.core.socket.logic.battle.newAi.action;

import java.util.List;

import com.game2sky.prilib.core.dict.domain.DictHeroSkill;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AOIEventEnum;
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
	public boolean doAction(DmcSceneObject self, AOIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		int skillId = self.getSkillId();
		long now = Globals.getTimeService().now();
		self.getController().getComponentRoleSkill().initPrepareSkill(DictHeroSkill.getDictHeroSkill(skillId).getKind(), now);
		SkillService service = AMFrameWorkBoot.getBean(SkillService.class);
		service.useSkill(self, skillId, param.getActionTargetObjects().get(0));
		return true;
	}

	@Override
	public boolean checkAction(DmcSceneObject self, AOIActionParam param) {
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
	public void stop() {
		
	}

	@Override
	public List<AOIEventEnum> getStopActionEvent() {
		// TODO Auto-generated method stub
		return null;
	}

}
