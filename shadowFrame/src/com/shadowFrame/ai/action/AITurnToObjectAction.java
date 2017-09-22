package com.shadowFrame.ai.action;

import com.shadowFrame.ai.SceneObject;

/**
 * 转向场景物体动作
 * @author shadow
 *
 */
public class AITurnToObjectAction implements IAIAction {

	@Override
	public boolean doAction(SceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		@SuppressWarnings("unused")
		SceneObject target = param.getActionTargetObjects(self).get(0);
		return true;
	}

	@Override
	public boolean checkAction(SceneObject self, AIActionParam param) {
		SceneObject target = param.getActionTargetObjects(self).get(0);
		if (target == null) {
			return false;
		}
		return true;
	}

	@Override
	public void stop(SceneObject self) {

	}

	@Override
	public void reset(AIActionParam param) {
		
	}

	@Override
	public boolean isOver(SceneObject self, AIActionParam param) {
		@SuppressWarnings("unused")
		SceneObject target = param.getActionTargetObjects(self).get(0);
		return true;
	}

}
