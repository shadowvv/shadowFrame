package com.shadowFrame.ai.action;

import java.util.Collection;

import com.shadowFrame.ai.AIInternalStaticData;
import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.threshold.AIThresholdEnum;
import com.shadowFrame.ai.condition.threshold.AIThresholdParam;
import com.shadowFrame.ai.condition.threshold.AIValueCompareEnum;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;
import com.shadowFrame.ai.tendency.AITendencyParam;

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
		int revolutionDir = Integer.parseInt(param.getCurrentParam().split(":")[0]);
		
		float wanderRadius = config.getWanderRadius() > self.getRadius() ? config.getWanderRadius() : self.getRadius();
		float wanderSpeed = config.getWanderSpeed() > 0 ? config.getWanderSpeed() : AIInternalStaticData.DEFAULT_WANDER_SPEED;
		if (dis > wanderRadius + 0.5) {
			FPoint3 moveV3D = SceneUtils.multiply(SceneUtils.normalize(dir), wanderRadius);
			FPoint3 rotation3D = SceneUtils.rotation(moveV3D, wanderSpeed * 0.2 * revolutionDir);
			FPoint3 targetPos = SceneUtils.add(target, rotation3D);
			targetPos.setY(self.getPos().getY());
			if (!SceneUtils.castLineLogic(self.getScene().getSceneNavmeshId(), self.getPos(), targetPos)) {
				return false;
			}
			self.getController().getRoleActionManager().move(targetPos);
		} else {
			FPoint3 moveV3D = SceneUtils.multiply(SceneUtils.normalize(dir), dis);
			FPoint3 rotation3D = SceneUtils.rotation(moveV3D, wanderSpeed * 0.2 * revolutionDir);
			FPoint3 targetPos = SceneUtils.add(target, rotation3D);
			targetPos.setY(self.getPos().getY());
			if (!SceneUtils.castLineLogic(self.getScene().getSceneNavmeshId(), self.getPos(), targetPos)) {
				return false;
			}
			self.getController().getRoleActionManager().revolutionTo(target, targetPos, Globals.getTimeService().now());
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
		
		if (!SceneUtils.isObjectInCircle(target, self.getViewLength(), self.getDir(), self.getPos(), self.getRadius(),self.getViewAngle())) {
			FPoint3 targetDir = SceneUtils.normalize(SceneUtils.calcDir(target, self.getPos()));
			self.getController().getRoleActionManager().turn(targetDir, Globals.getTimeService().now());			
			return false;
		}
		return false;
	}

	@Override
	public void stop(DmcSceneObject self) {
		self.getRoleActionManager().stopMove();
	}

	@Override
	public void reset(AIActionParam param,DmcSceneObject self, AITendencyParam currentTendency) {
		String[] params = param.getParam().split(",");
		FPoint3 target = new FPoint3(Float.parseFloat(params[0]), Float.parseFloat(params[1]), Float.parseFloat(params[2]));
		param.getActionTargetPoints().clear();
		param.getActionTargetPoints().add(target);
		param.setCurrentParam(param.getParam() + ":" + MathUtils.randomSign());
	}

	@Override
	public boolean isOver(DmcSceneObject self, AIActionParam param,Collection<AIEvent> aiEvents) {
		int time = Integer.parseInt(param.getCurrentParam().split(":")[1]);
		AIThresholdParam threshold = new AIThresholdParam(AIThresholdEnum.ActionDuation.getId(), time, AITargetObjectCampEnum.self.getId(), AIValueCompareEnum.NotSmaller.getId());
		if(threshold.overThreshold(self)){
			return true;
		}
		return false;
	}

}
