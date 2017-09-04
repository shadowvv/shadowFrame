package com.game2sky.prilib.core.socket.logic.battle.newAi.action;

import java.util.List;

import com.game2sky.prilib.core.dict.domain.DictCopyEnemy;
import com.game2sky.prilib.core.socket.logic.battle.ai.AIInternalStaticData;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AOIEventEnum;
import com.game2sky.prilib.core.socket.logic.human.state.ActionState;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;
import com.game2sky.publib.Globals;
import com.game2sky.publib.communication.game.struct.FPoint3;
import com.game2sky.publib.framework.util.MathUtils;
import com.game2sky.publib.socket.logic.scene.SceneUtils;

/**
 * 围绕场景物体公转动作
 * @author shadow
 *
 */
public class AIRevolutionToObjectAction implements IAIAction{

	@Override
	public boolean doAction(DmcSceneObject self, AOIActionParam param) {
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
	public boolean checkAction(DmcSceneObject self, AOIActionParam param) {
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
		
	}

	@Override
	public List<AOIEventEnum> getStopActionEvent() {
		// TODO Auto-generated method stub
		return null;
	}

}
