package com.shadowFrame.ai.action;

import com.shadowFrame.ai.DmcSceneObject;
import com.sun.javafx.scene.SceneUtils;

public class AITurnToObjectAction implements IAIAction {

	@Override
	public int getActionId() {
		return AIActionEnum.TurnToObject.getId();
	}

	@Override
	public String getActionName() {
		return AIActionEnum.TurnToObject.getName();
	}

	@Override
	public boolean doAction(DmcSceneObject self, IAIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		DmcSceneObject target = param.getActionTargetObjects().get(0);
		FPoint3 targetDir = SceneUtils.normalize(SceneUtils.calcDir(target.getPos(), self.getPos()));
		self.getController().getRoleActionManager().turn(self.getDir(), targetDir, Globals.getTimeService().now());
		return true;
	}

	@Override
	public boolean checkAction(DmcSceneObject self, IAIActionParam param) {
		DmcSceneObject target = param.getActionTargetObjects().get(0);
		if (target == null) {
			return false;
		}

		if (!self.getRoleStateManager().canEnter(ActionState.MOVING)) {
			return false;
		}

		if (SceneUtils.isObjectInCircle(target.getPos(), AIInternalStaticData.VIEW_DISTANSE, self.getDir(), self.getPos(), self.getRadius(), AIInternalStaticData.FACE_ANGLE)) {
			return false;
		}		
		return true;
	}

	@Override
	public void stop() {
		// TODO Auto-generated method stub
		
	}

}
