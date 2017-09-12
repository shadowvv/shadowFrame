package com.game2sky.prilib.core.socket.logic.battle.newAi.action;

import com.game2sky.prilib.core.dict.domain.DictCopyEnemy;
import com.game2sky.prilib.core.socket.logic.battle.ai.AIInternalStaticData;
import com.game2sky.prilib.core.socket.logic.battle.newAi.AITransfer;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.target.AITargetObjectCampEnum;
import com.game2sky.prilib.core.socket.logic.battle.newAi.threshold.AIThresholdEnum;
import com.game2sky.prilib.core.socket.logic.battle.newAi.threshold.AIThresholdParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.threshold.AIValueCompareEnum;
import com.game2sky.prilib.core.socket.logic.human.state.ActionState;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;
import com.game2sky.publib.Globals;
import com.game2sky.publib.communication.game.struct.FPoint3;
import com.game2sky.publib.framework.util.MathUtils;
import com.game2sky.publib.socket.logic.scene.SceneUtils;

/**
 * 围绕场景点公转动作
 * @author shadow
 *
 */
public class AIRevolutionToPointAction implements IAIAction{

	@Override
	public boolean doAction(DmcSceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		DictCopyEnemy config = DictCopyEnemy.getDictCopyEnemy(self.getDictId());
		FPoint3 target = param.getActionTargetPoints().get(0);
		FPoint3 dir = SceneUtils.calcDir(self.getPos(), target);
		float dis = SceneUtils.calcDis(self.getPos(), target);

		float wanderRadius = config.getWanderRadius() > self.getRadius() ? config.getWanderRadius() : self.getRadius();
		float wanderSpeed = config.getWanderSpeed() > 0 ? config.getWanderSpeed() : AIInternalStaticData.DEFAULT_WANDER_SPEED;
		if (dis > wanderRadius + 0.5) {
			FPoint3 moveV3D = SceneUtils.multiply(SceneUtils.normalize(dir), wanderRadius);
			FPoint3 rotation3D = SceneUtils.rotation(moveV3D, wanderSpeed * 1 * MathUtils.randomSign());
			FPoint3 targetPos = SceneUtils.add(target, rotation3D);
			targetPos.setY(self.getPos().getY());
			self.getController().getRoleActionManager().move(targetPos);
		} else {
			FPoint3 moveV3D = SceneUtils.multiply(SceneUtils.normalize(dir), dis);
			FPoint3 rotation3D = SceneUtils.rotation(moveV3D, wanderSpeed * 1 * MathUtils.randomSign());
			FPoint3 targetPos = SceneUtils.add(target, rotation3D);
			targetPos.setY(self.getPos().getY());
			self.getController().getRoleActionManager().move(target, targetPos, Globals.getTimeService().now());
		}
		return false;
	}

	@Override
	public boolean checkAction(DmcSceneObject self, AIActionParam param) {
		DictCopyEnemy config = DictCopyEnemy.getDictCopyEnemy(self.getDictId());
		if (config == null) {
			return false;
		}

		FPoint3 target = param.getActionTargetPoints().get(0);
		if (target == null) {
			return false;
		}
		if (!self.getRoleStateManager().canEnter(ActionState.MOVING)) {
			return false;
		}
		
		if (!SceneUtils.isObjectInCircle(target, AIInternalStaticData.VIEW_DISTANSE, self.getDir(), self.getPos(), self.getRadius(), AIInternalStaticData.FACE_ANGLE)) {
			FPoint3 targetDir = SceneUtils.normalize(SceneUtils.calcDir(target, self.getPos()));
			self.getController().getRoleActionManager().turn(self.getDir(), targetDir, Globals.getTimeService().now());			
			return false;
		}
		return false;
	}

	@Override
	public void stop(DmcSceneObject self) {
		self.getRoleActionManager().stopMove();
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
		AIThresholdParam threshold = new AIThresholdParam(AIThresholdEnum.ActionDuation.getId(), Double.parseDouble(param.getParam()), AITargetObjectCampEnum.self.getId(), AIValueCompareEnum.NotSmaller.getId());
		if(AITransfer.transfer(threshold, AIEvent.EMPTY_EVENT, self)){
			return true;
		}
		return false;
	}

}
