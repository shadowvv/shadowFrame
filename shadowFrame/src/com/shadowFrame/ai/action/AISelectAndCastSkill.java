package com.shadowFrame.ai.action;

import java.util.Collection;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.event.AIEventEnum;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;
import com.shadowFrame.ai.tendency.AITendencyParam;

/**
 * 选择并释放技能
 *
 * @author shadow
 * @version v0.1 2017年11月7日 下午7:06:17  shadow
 */
public class AISelectAndCastSkill implements IAIAction{

	@Override
	public boolean doAction(DmcSceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		int skillId = Integer.parseInt(param.getCurrentParam());
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
		int skillId = Integer.parseInt(param.getCurrentParam());
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
		self.getController().getComponentAI().getCurrentAction().setDone(true);
	}

	@Override
	public void reset(AIActionParam param, DmcSceneObject self, AITendencyParam currentTendency) {
		String[] params = param.getParam().split(";");
		int[] ks = new int[params.length];
		int[] vs = new int[params.length];
		for (int i = 0; i < params.length; i++) {
			String k_v = params[i];
			String[] kv = k_v.split(":");
			ks[i] = Integer.parseInt(kv[0]);
			vs[i] = Integer.parseInt(kv[1]);
		}
		int index = MathUtils.randomSelectByFrequency(vs, null);
		param.setCurrentParam(ks[index]+"");
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
