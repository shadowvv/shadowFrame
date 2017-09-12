package com.game2sky.prilib.core.socket.logic.battle.newAi.action;

import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * 死亡动作
 * @author shadow
 *
 */
public class AIDeadAction implements IAIAction{

	@Override
	public boolean doAction(DmcSceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		self.changeHp(self.getDmcHp() * -1);
		return true;
	}

	@Override
	public boolean checkAction(DmcSceneObject self, AIActionParam param) {
		return true;
	}

	@Override
	public void stop(DmcSceneObject self) {
		
	}

	@Override
	public void reset(AIActionParam param) {
		
	}

	@Override
	public boolean isOver(DmcSceneObject self, AIActionParam param) {
		return true;
	}

}
