package com.shadowFrame.ai.action;

import java.util.Collection;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.event.AOIEventService;
import com.shadowFrame.ai.tendency.AITendencyParam;

/**
 * 移动到场景物体动作
 * @author shadow
 *
 */
public class AIMoveToObjectAction implements IAIAction {

	@Override
	public boolean doAction(SceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		SceneObject target = param.getActionTargetObjects(self).get(0);
		self.getController().getRoleActionManager().move(target.getPos());
		return false;
	}

	@Override
	public boolean checkAction(SceneObject self, AIActionParam param) {
 		SceneObject target = param.getActionTargetObjects(self).get(0);
		if (target == null) {
			return false;
		}

		if (!self.getRoleStateManager().canEnter(ActionState.MOVING)) {
			return false;
		}

		if (!SceneUtils.castLineLogic(self.getScene().getSceneNavmeshId(), self.getPos(), target.getPos())) {
			return false;
		}
		if (!SceneUtils.isObjectInCircle(target.getPos(), target.getRadius(), self.getDir(), self.getPos(), self.getViewLength(),self.getViewAngle())) {
			FPoint3 targetDir = SceneUtils.normalize(SceneUtils.calcDir(target.getPos(), self.getPos()));
			self.getController().getRoleActionManager().turn(targetDir, Globals.getTimeService().now());			
			return false;
		}

		if (SceneUtils.isObjectInCircle(target.getPos(), target.getRadius(), self.getDir(), self.getPos(), self.getRadius(), self.getViewAngle())) {
			self.getController().getRoleActionManager().stopMove(null, true, false,null);
			AOIEventService.onSceneObjectStopMove(self, self.getPos(), self.getDir());
			return false;
		}
		return true;
	}

	@Override
	public void stop(SceneObject self) {
		self.getController().getRoleActionManager().stopMove(null, true, false,null);
	}

	@Override
	public void reset(AIActionParam param,SceneObject self, AITendencyParam currentTendency) {
		String[] params = param.getParam().split(":");
		String type = params[0];
		float dis = 0;
		if(type.equals("common")){
			dis = Float.parseFloat(params[1]);
		}else if(type.equals("skill")){
			DictHeroSkill skill = DictHeroSkill.getDictHeroSkill(Integer.parseInt(params[1]));
			if (skill != null) {
				dis = skill.getReleaseRange();
			}
		}
		param.setCurrentParam(dis+"");
	}

	@Override
	public boolean isOver(SceneObject self, AIActionParam param,Collection<AIEvent> aiEvents) {
		if(param.getActionTargetObjects(self).size() == 0){
			return true;
		}
		SceneObject target = param.getActionTargetObjects(self).get(0);
		float dis = Float.parseFloat(param.getCurrentParam());
		if (SceneUtils.isObjectInCircle(target.getPos(), target.getRadius(), self.getDir(), self.getPos(), dis, self.getViewAngle())) {
			return true;
		}
		return false;
	}

}
