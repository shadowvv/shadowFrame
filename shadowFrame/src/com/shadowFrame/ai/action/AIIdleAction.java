package com.game2sky.prilib.core.socket.logic.battle.newAi.action;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AOIEventEnum;
import com.game2sky.prilib.core.socket.logic.human.state.ActionState;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * 待机动作
 * @author shadow
 *
 */
public class AIIdleAction implements IAIAction {

	@Override
	public boolean doAction(DmcSceneObject self, AOIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		self.getRoleActionManager().stopMove();
		return true;
	}

	@Override
	public boolean checkAction(DmcSceneObject self, AOIActionParam param) {
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
		
	}

	@Override
	public List<AOIEventEnum> getStopActionEvent() {
		// TODO Auto-generated method stub
		return null;
	}

}