package com.shadowFrame.ai.action;


public class AICastSkillAction implements IAIAction{

	@Override
	public int getActionId() {
		return AIActionEnum.CastSkill.getId();
	}

	@Override
	public String getActionName() {
		return AIActionEnum.CastSkill.getName();
	}

	@Override
	public boolean doAction(DmcSceneObject self, IAIActionParam param) {
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
	public boolean checkAction(DmcSceneObject self, IAIActionParam param) {
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
		// TODO Auto-generated method stub
		
	}

}
