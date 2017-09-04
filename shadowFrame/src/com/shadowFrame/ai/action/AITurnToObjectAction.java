package com.game2sky.prilib.core.socket.logic.battle.newAi.action;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.ai.AIInternalStaticData;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AOIEventEnum;
import com.game2sky.prilib.core.socket.logic.human.state.ActionState;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;
import com.game2sky.publib.Globals;
import com.game2sky.publib.communication.game.struct.FPoint3;
import com.game2sky.publib.socket.logic.scene.SceneUtils;

/**
 * 转向场景物体动作
 * @author shadow
 *
 */
public class AITurnToObjectAction implements IAIAction {

	@Override
	public boolean doAction(DmcSceneObject self, AOIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		DmcSceneObject target = param.getActionTargetObjects().get(0);
		FPoint3 targetDir = SceneUtils.normalize(SceneUtils.calcDir(target.getPos(), self.getPos()));
		self.getController().getRoleActionManager().turn(self.getDir(), targetDir, Globals.getTimeService().now());
		return true;
	}

	@Override
	public boolean checkAction(DmcSceneObject self, AOIActionParam param) {
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
		
	}

	@Override
	public List<AOIEventEnum> getStopActionEvent() {
		// TODO Auto-generated method stub
		return null;
	}

}