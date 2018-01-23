package com.shadowFrame.ai.action;

import java.util.Collection;

import com.shadowFrame.ai.AIInternalStaticData;
import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.threshold.AIThresholdEnum;
import com.shadowFrame.ai.condition.threshold.AIThresholdParam;
import com.shadowFrame.ai.condition.threshold.AIValueCompareEnum;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;
import com.shadowFrame.ai.tendency.AITendencyParam;

/**
 * 围绕场景物体公转动作
 * @author shadow
 *
 */
public class AIRevolutionToObjectAction implements IAIAction{

	@Override
	public boolean doAction(SceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		DictCopyEnemy config = DictCopyEnemy.getDictCopyEnemy(self.getDictId());
		SceneObject target = param.getActionTargetObjects(self).get(0);
		FPoint3 dir = SceneUtils.calcDir(self.getPos(), target.getPos());
		float dis = SceneUtils.calcDis(self.getPos(), target.getPos());
		int revolutionDir = Integer.parseInt(param.getCurrentParam().split(":")[1]);
		
		float wanderRadius = config.getWanderRadius() > target.getRadius() + self.getRadius() ? config.getWanderRadius() : target
				.getRadius() + self.getRadius();
		float wanderSpeed = config.getWanderSpeed() > 0 ? config.getWanderSpeed() : AIInternalStaticData.DEFAULT_WANDER_SPEED;
		if (dis > wanderRadius + 0.5) {
//			FPoint3 moveV3D = SceneUtils.multiply(SceneUtils.normalize(dir), wanderRadius);
//			FPoint3 rotation3D = SceneUtils.rotation(moveV3D, wanderSpeed * 1 * revolutionDir);
//			FPoint3 targetPos = SceneUtils.add(target.getPos(), rotation3D);
//			targetPos.setY(self.getPos().getY());
//			if (!SceneUtils.castLineLogic(self.getScene().getSceneNavmeshId(), self.getPos(), targetPos)) {
//				return false;
//			}
//			self.getController().getRoleActionManager().move(targetPos);
		} else {
			FPoint3 moveV3D = SceneUtils.multiply(SceneUtils.normalize(dir), dis);
			FPoint3 rotation3D = SceneUtils.rotation(moveV3D, wanderSpeed * 1 * revolutionDir);
			FPoint3 targetPos = SceneUtils.add(target.getPos(), rotation3D);
			targetPos.setY(self.getPos().getY());
			if (!SceneUtils.castLineLogic(self.getScene().getSceneNavmeshId(), self.getPos(), targetPos)) {
				return false;
			}
			self.getController().getRoleActionManager().revolutionTo(target.getPos(), targetPos, Globals.getTimeService().now());
		}
		String[] currentParams = param.getCurrentParam().split(":");
		param.setCurrentParam(currentParams[0]+":"+revolutionDir+":"+(Globals.getTimeService().now()+1100));
		return false;
	}

	@Override
	public boolean checkAction(SceneObject self, AIActionParam param) {
		DictCopyEnemy config = DictCopyEnemy.getDictCopyEnemy(self.getDictId());
		if (config == null) {
			return false;
		}

		if(param.getActionTargetObjects(self) == null || param.getActionTargetObjects(self).size() == 0){
			return false;
		}
		SceneObject target = param.getActionTargetObjects(self).get(0);
		if (target == null) {
			return false;
		}
		if (!self.getRoleStateManager().canEnter(ActionState.MOVING)) {
			return false;
		}
		
		if (!SceneUtils.isObjectInCircle(target.getPos(), target.getRadius(), self.getDir(), self.getPos(), self.getViewLength(),self.getViewAngle())) {
			FPoint3 targetDir = SceneUtils.normalize(SceneUtils.calcDir(target.getPos(), self.getPos()));
			self.getController().getRoleActionManager().turn(targetDir, Globals.getTimeService().now());			
			return false;
		}
		long nextTime = Long.parseLong(param.getCurrentParam().split(":")[2]);
		if(Globals.getTimeService().now() < nextTime){
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
		param.setCurrentParam(param.getParam() + ":" + MathUtils.randomSign() + ":" + param.getBeginTime());
	}

	@Override
	public boolean isOver(SceneObject self, AIActionParam param,Collection<AIEvent> aiEvents) {
		int time = Integer.parseInt(param.getCurrentParam().split(":")[0]);
		AIThresholdParam threshold = new AIThresholdParam(AIThresholdEnum.ActionDuation.getId(), time, AITargetObjectCampEnum.self.getId(), AIValueCompareEnum.NotSmaller.getId());
		if(threshold.overThreshold(self)){
			return true;
		}
		return false;
	}

}
