package com.shadowFrame.ai.action;

import java.util.Collection;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.event.AOIEventService;
import com.shadowFrame.ai.tendency.AITendencyParam;

/**
 * 移动到点动作
 * @author shadow
 *
 */
public class AIMoveToPointAction implements IAIAction {

	@Override
	public boolean doAction(DmcSceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		FPoint3 target = param.getActionTargetPoints().get(0);
		self.getController().getRoleActionManager().move(target);
		return false;
	}

	@Override
	public boolean checkAction(DmcSceneObject self, AIActionParam param) {
		FPoint3 target = param.getActionTargetPoints().get(0);
		if (target == null) {
			return false;
		}

		if (!self.getRoleStateManager().canEnter(ActionState.MOVING)) {
			return false;
		}

		if (!SceneUtils.castLineLogic(self.getScene().getSceneNavmeshId(), self.getPos(), target)) {
			return false;
		}
		
		if (!SceneUtils.isObjectInCircle(target, 0.1, self.getDir(), self.getPos(), self.getViewLength(),self.getViewAngle())) {
			FPoint3 targetDir = SceneUtils.normalize(SceneUtils.calcDir(target, self.getPos()));
			self.getController().getRoleActionManager().turn(targetDir, Globals.getTimeService().now());			
			return false;
		}

		if (SceneUtils.isObjectInCircle(target, 0.1, self.getDir(), self.getPos(), self.getRadius(), self.getViewAngle())) {
			self.getController().getRoleActionManager().stopMove(null, true, false,null);
			AOIEventService.onSceneObjectStopMove(self, self.getPos(), self.getDir());
			return false;
		}
		return true;
	}

	@Override
	public void stop(DmcSceneObject self) {
		self.getController().getRoleActionManager().stopMove(null, true, false,null);
	}

	@Override
	public void reset(AIActionParam param,DmcSceneObject self, AITendencyParam currentTendency) {
		String[] params = param.getParam().split(",");
		FPoint3 target = new FPoint3(Float.parseFloat(params[0]), Float.parseFloat(params[1]), Float.parseFloat(params[2]));
		param.getActionTargetPoints().clear();
		param.getActionTargetPoints().add(target);
	}

	@Override
	public boolean isOver(DmcSceneObject self, AIActionParam param,Collection<AIEvent> aiEvents) {
		FPoint3 target = param.getActionTargetPoints().get(0);
		if (target == null) {
			return true;
		}
		if (SceneUtils.isObjectInCircle(target, 0.5, self.getDir(), self.getPos(), self.getRadius(), self.getViewAngle())) {
			return true;
		}
		return false;
	}

}
