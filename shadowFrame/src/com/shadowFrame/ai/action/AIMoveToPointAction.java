package com.game2sky.prilib.core.socket.logic.battle.newAi.action;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AOIEventEnum;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * 移动到点动作
 * @author shadow
 *
 */
public class AIMoveToPointAction implements IAIAction {

	@Override
	public boolean doAction(DmcSceneObject self, AOIActionParam param) {
		return false;
	}

	@Override
	public boolean checkAction(DmcSceneObject self, AOIActionParam param) {
		return false;
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
