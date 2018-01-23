package com.shadowFrame.ai.action;

import java.util.Collection;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.tendency.AITendencyParam;

/**
 * 转向场景物体动作
 * @author shadow
 *
 */
public class AITurnToObjectAction implements IAIAction {

	@Override
	public boolean doAction(DmcSceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		DmcSceneObject target = param.getActionTargetObjects(self).get(0);
		FPoint3 targetDir = SceneUtils.normalize(SceneUtils.calcDir(target.getPos(), self.getPos()));
		self.getController().getRoleActionManager().turn(targetDir, Globals.getTimeService().now());
		return true;
	}

	@Override
	public boolean checkAction(DmcSceneObject self, AIActionParam param) {
		DmcSceneObject target = param.getActionTargetObjects(self).get(0);
		if (target == null) {
			return false;
		}

		if (!self.getRoleStateManager().canEnter(ActionState.MOVING)) {
			return false;
		}

		if (SceneUtils.isObjectInCircle(target.getPos(), target.getRadius(), self.getDir(), self.getPos(), self.getViewLength(),self.getViewAngle())) {
			return false;
		}		
		return true;
	}

	@Override
	public void stop(DmcSceneObject self) {
		self.getRoleActionManager().stopMove();
	}

	@Override
	public void reset(AIActionParam param,DmcSceneObject self, AITendencyParam currentTendency) {
		
	}

	@Override
	public boolean isOver(DmcSceneObject self, AIActionParam param,Collection<AIEvent> aiEvents) {
		DmcSceneObject target = param.getActionTargetObjects(self).get(0);
		if (SceneUtils.isObjectInCircle(target.getPos(), target.getRadius(), self.getDir(), self.getPos(), self.getViewLength(),self.getViewAngle())) {
			return true;
		}		
		return false;
	}

}
