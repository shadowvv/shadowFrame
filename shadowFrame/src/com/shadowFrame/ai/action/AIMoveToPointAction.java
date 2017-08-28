package com.shadowFrame.ai.action;

import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

public class AIMoveToPointAction implements IAIAction {

	@Override
	public int getActionId() {
		return AIActionEnum.MoveToPoint.getId();
	}

	@Override
	public String getActionName() {
		return AIActionEnum.MoveToPoint.getName();
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
