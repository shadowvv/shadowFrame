package com.shadowFrame.ai.action;

import java.util.Collection;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.tendency.AITendencyParam;

/**
 * 转向到物体快照
 *
 * @author shadow
 * @version v0.1 2017年11月8日 下午7:08:25  shadow
 */
public class AITurnToObjectSnapshotAction implements IAIAction{

	@Override
	public boolean doAction(DmcSceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		FPoint3 target = param.getActionTargetPoints().get(0);
		FPoint3 targetDir = SceneUtils.normalize(SceneUtils.calcDir(target, self.getPos()));
		self.getController().getRoleActionManager().turn(targetDir, Globals.getTimeService().now());
		return true;
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

		if (SceneUtils.isObjectInCircle(target, 0.1, self.getDir(), self.getPos(), self.getViewLength(),self.getViewAngle())) {
			return false;
		}		
		return true;
	}

	@Override
	public void stop(DmcSceneObject self) {
		self.getRoleActionManager().stopMove();
	}

	@Override
	public void reset(AIActionParam param,DmcSceneObject self, AITendencyParam currentTendency) {
		DmcSceneObject target = param.getActionTargetObjects(self).get(0);
		if(target == null){
			return;
		}
		param.getActionTargetPoints().clear();
		param.getActionTargetPoints().add(target.getPos());
	}

	@Override
	public boolean isOver(DmcSceneObject self, AIActionParam param,Collection<AIEvent> aiEvents) {
		FPoint3 target = param.getActionTargetPoints().get(0);
		if(target == null){
			return true;
		}
		if (SceneUtils.isObjectInCircle(target, 0.1, self.getDir(), self.getPos(), self.getViewLength(),self.getViewAngle())) {
			return true;
		}		
		return false;
	}

}
