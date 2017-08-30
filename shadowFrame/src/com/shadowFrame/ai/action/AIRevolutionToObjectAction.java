package com.shadowFrame.ai.action;

import com.shadowFrame.ai.DmcSceneObject;
import com.sun.javafx.scene.SceneUtils;

public class AIRevolutionToObjectAction implements IAIAction{

	@Override
	public int getActionId() {
		return AIActionEnum.RevolutionToObject.getId();
	}

	@Override
	public String getActionName() {
		return AIActionEnum.RevolutionToObject.getName();
	}

	@Override
	public boolean doAction(DmcSceneObject self, IAIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		DictCopyEnemy config = DictCopyEnemy.getDictCopyEnemy(self.getDictId());
		DmcSceneObject target = param.getActionTargetObjects().get(0);
		FPoint3 dir = SceneUtils.calcDir(self.getPos(), target.getPos());
		float dis = SceneUtils.calcDis(self.getPos(), target.getPos());

		float wanderRadius = config.getWanderRadius() > target.getRadius() + self.getRadius() ? config.getWanderRadius() : target
				.getRadius() + self.getRadius();
		float wanderSpeed = config.getWanderSpeed() > 0 ? config.getWanderSpeed() : AIInternalStaticData.DEFAULT_WANDER_SPEED;
		if (dis > wanderRadius + 0.5) {
			FPoint3 moveV3D = SceneUtils.multiply(SceneUtils.normalize(dir), wanderRadius);
			FPoint3 rotation3D = SceneUtils.rotation(moveV3D, wanderSpeed * 1 * MathUtils.randomSign());
			FPoint3 targetPos = SceneUtils.add(target.getPos(), rotation3D);
			targetPos.setY(self.getPos().getY());
			self.getController().getRoleActionManager().move(targetPos);
		} else {
			FPoint3 moveV3D = SceneUtils.multiply(SceneUtils.normalize(dir), dis);
			FPoint3 rotation3D = SceneUtils.rotation(moveV3D, wanderSpeed * 1 * MathUtils.randomSign());
			FPoint3 targetPos = SceneUtils.add(target.getPos(), rotation3D);
			targetPos.setY(self.getPos().getY());
			self.getController().getRoleActionManager().move(target.getPos(), targetPos, Globals.getTimeService().now());
		}
		return false;
	}

	@Override
	public boolean checkAction(DmcSceneObject self, IAIActionParam param) {
		DictCopyEnemy config = DictCopyEnemy.getDictCopyEnemy(self.getDictId());
		if (config == null) {
			return false;
		}

		DmcSceneObject target = param.getActionTargetObjects().get(0);
		if (target == null) {
			return false;
		}
		if (!self.getRoleStateManager().canEnter(ActionState.MOVING)) {
			return false;
		}
		
		if (!SceneUtils.isObjectInCircle(target.getPos(), AIInternalStaticData.VIEW_DISTANSE, self.getDir(), self.getPos(), self.getRadius(), AIInternalStaticData.FACE_ANGLE)) {
			FPoint3 targetDir = SceneUtils.normalize(SceneUtils.calcDir(target.getPos(), self.getPos()));
			self.getController().getRoleActionManager().turn(self.getDir(), targetDir, Globals.getTimeService().now());			
			return false;
		}
		return false;
	}

	@Override
	public void stop() {
		// TODO Auto-generated method stub
		
	}

}
