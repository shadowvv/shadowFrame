package com.shadowFrame.ai.action;

import com.shadowFrame.ai.SceneObject;

public class AIIdleAction implements IAIAction {

	@Override
	public void doAction(SceneObject self, IAIActionParam param) {
		self.stopMove();
	}

	@Override
	public int getActionId() {
		// TODO 自动生成的方法存根
		return 0;
	}

	@Override
	public String getActionName() {
		// TODO 自动生成的方法存根
		return null;
	}

}
