package com.game2sky.prilib.core.socket.logic.battle.newAi.action;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.aoiEvent.AOIEventEnum;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * 转向场景点动作
 * @author shadow
 *
 */
public class AITurnToPointAction implements IAIAction{

	@Override
	public boolean doAction(DmcSceneObject self, AIActionParam param) {
		return false;
	}

	@Override
	public boolean checkAction(DmcSceneObject self, AIActionParam param) {
		return false;
	}

	@Override
	public void stop() {
		
	}

	@Override
	public List<AOIEventEnum> getStopActionEvent() {
		return null;
	}

	@Override
	public void reset(AIActionParam param) {
		// TODO 自动生成的方法存根
		
	}

	@Override
	public boolean isOver(DmcSceneObject self, AIActionParam param) {
		// TODO 自动生成的方法存根
		return false;
	}

}
