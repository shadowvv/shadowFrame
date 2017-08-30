package com.shadowFrame.ai.action;

import com.shadowFrame.ai.DmcSceneObject;
import com.sun.javafx.scene.SceneUtils;

public class AIMoveToObjectAction implements IAIAction {

	@Override
	public int getActionId() {
		return AIActionEnum.MoveToObject.getId();
	}

	@Override
	public String getActionName() {
		return AIActionEnum.MoveToObject.getName();
	}

	@Override
	public boolean doAction(DmcSceneObject self, IAIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		DmcSceneObject target = param.getActionTargetObjects().get(0);
		self.getController().getRoleActionManager().move(target, Globals.getTimeService().now());
		return false;
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

		if (!SceneUtils.castLineLogic(self.getScene().getSceneMapId(), self.getPos(), target.getPos())) {
			return false;
		}
		
		if (!SceneUtils.isObjectInCircle(target.getPos(), AIInternalStaticData.VIEW_DISTANSE, self.getDir(), self.getPos(), self.getRadius(), AIInternalStaticData.FACE_ANGLE)) {
			FPoint3 targetDir = SceneUtils.normalize(SceneUtils.calcDir(target.getPos(), self.getPos()));
			self.getController().getRoleActionManager().turn(self.getDir(), targetDir, Globals.getTimeService().now());			
			return false;
		}

		if (SceneUtils.isObjectInCircle(target.getPos(), target.getRadius(), self.getDir(), self.getPos(), self.getRadius(), AIInternalStaticData.FACE_ANGLE)) {
			self.getController().getRoleActionManager().stopMove(null, true, false);
			AIService.getInstance().onSceneObjectStopMove(self, self.getPos(), self.getDir());
			return false;
		}
		return true;
	}

	@Override
	public void stop() {
		// TODO Auto-generated method stub
		
	}

}
