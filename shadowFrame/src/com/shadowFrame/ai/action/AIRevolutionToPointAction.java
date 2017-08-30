package com.shadowFrame.ai.action;

import com.shadowFrame.ai.DmcSceneObject;

public class AIRevolutionToPointAction implements IAIAction{

	@Override
	public int getActionId() {
		return AIActionEnum.RevolutionToPoint.getId();
	}

	@Override
	public String getActionName() {
		return AIActionEnum.RevolutionToPoint.getName();
	}

	@Override
	public boolean doAction(DmcSceneObject self, IAIActionParam param) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean checkAction(DmcSceneObject self, IAIActionParam param) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void stop() {
		// TODO Auto-generated method stub
		
	}

}
