package com.shadowFrame.ai.action;

import com.shadowFrame.ai.SceneObject;

/**
 * 死亡动作
 * @author shadow
 *
 */
public class AIDeadAction implements IAIAction{

	@Override
	public boolean doAction(SceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		return true;
	}

	@Override
	public boolean checkAction(SceneObject self, AIActionParam param) {
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
		return true;
	}

}
