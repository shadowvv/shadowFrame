package com.game2sky.prilib.core.socket.logic.battle.newAi.action;

import com.game2sky.prilib.core.socket.logic.battle.ai.AIInternalStaticData;
import com.game2sky.prilib.core.socket.logic.battle.ai.AIService;
import com.game2sky.prilib.core.socket.logic.human.state.ActionState;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;
import com.game2sky.publib.Globals;
import com.game2sky.publib.communication.game.struct.FPoint3;
import com.game2sky.publib.socket.logic.scene.SceneUtils;

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

		if (!SceneUtils.castLineLogic(self.getScene().getSceneMapId(), self.getPos(), target)) {
			return false;
		}
		
		if (!SceneUtils.isObjectInCircle(target, AIInternalStaticData.VIEW_DISTANSE, self.getDir(), self.getPos(), self.getRadius(), AIInternalStaticData.FACE_ANGLE)) {
			FPoint3 targetDir = SceneUtils.normalize(SceneUtils.calcDir(target, self.getPos()));
			self.getController().getRoleActionManager().turn(self.getDir(), targetDir, Globals.getTimeService().now());			
			return false;
		}

		if (SceneUtils.isObjectInCircle(target, 0.1, self.getDir(), self.getPos(), self.getRadius(), AIInternalStaticData.FACE_ANGLE)) {
			self.getController().getRoleActionManager().stopMove(null, true, false);
			AIService.getInstance().onSceneObjectStopMove(self, self.getPos(), self.getDir());
			return false;
		}
		return true;
	}

	@Override
	public void stop(DmcSceneObject self) {
		self.getController().getRoleActionManager().stopMove(null, true, false);
	}

	@Override
	public void reset(AIActionParam param) {
		String[] params = param.getParam().split(",");
		FPoint3 target = new FPoint3(Float.parseFloat(params[0]), Float.parseFloat(params[1]), Float.parseFloat(params[2]));
		param.getActionTargetPoints().clear();
		param.getActionTargetPoints().add(target);
	}

	@Override
	public boolean isOver(DmcSceneObject self, AIActionParam param) {
		FPoint3 target = param.getActionTargetPoints().get(0);
		if (target == null) {
			return true;
		}
		if (SceneUtils.isObjectInCircle(target, 0.1, self.getDir(), self.getPos(), self.getRadius(), AIInternalStaticData.FACE_ANGLE)) {
			return true;
		}
		return false;
	}

}
