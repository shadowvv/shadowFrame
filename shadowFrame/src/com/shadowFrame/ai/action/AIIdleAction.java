package com.shadowFrame.ai.action;

import com.game2sky.prilib.core.socket.logic.human.state.ActionState;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

public class AIIdleAction implements IAIAction {

	@Override
	public int getActionId() {
		return AIActionEnum.Idle.getId();
	}

	@Override
	public String getActionName() {
		return AIActionEnum.Idle.getName();
	}

	@Override
	public boolean doAction(DmcSceneObject self, IAIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		self.getRoleActionManager().stopMove();
		return true;
	}

	@Override
	public boolean checkAction(DmcSceneObject self, IAIActionParam param) {
		if(self.getRoleStateManager().getCurActionState().equals(ActionState.STANDING)){
			return false;
		}
		if (!self.getRoleStateManager().canEnter(ActionState.STANDING)) {
			return false;
		}
		return true;
	}

	@Override
	public void stop() {
		// TODO Auto-generated method stub
		
	}

}
