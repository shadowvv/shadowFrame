package com.shadowFrame.ai.action;

import java.util.Collection;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.tendency.AITendencyParam;

/**
 * 转向场景物体动作
 * @author shadow
 *
 */
public class AITurnToObjectAction implements IAIAction {

	@Override
	public boolean doAction(SceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		SceneObject target = param.getActionTargetObjects(self).get(0);
		FPoint3 targetDir = SceneUtils.normalize(SceneUtils.calcDir(target.getPos(), self.getPos()));
		self.getController().getRoleActionManager().turn(targetDir, Globals.getTimeService().now());
		return true;
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

		if (SceneUtils.isObjectInCircle(target.getPos(), target.getRadius(), self.getDir(), self.getPos(), self.getViewLength(),self.getViewAngle())) {
			return false;
		}		
		return true;
	}

	@Override
	public void stop(SceneObject self) {
		self.getRoleActionManager().stopMove();
	}

	@Override
	public void reset(AIActionParam param,SceneObject self, AITendencyParam currentTendency) {
		
	}

	@Override
	public boolean isOver(SceneObject self, AIActionParam param,Collection<AIEvent> aiEvents) {
		SceneObject target = param.getActionTargetObjects(self).get(0);
		if (SceneUtils.isObjectInCircle(target.getPos(), target.getRadius(), self.getDir(), self.getPos(), self.getViewLength(),self.getViewAngle())) {
			return true;
		}		
		return false;
	}

}
