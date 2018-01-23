package com.shadowFrame.ai.action;

import java.util.Collection;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.tendency.AITendencyParam;

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
		self.changeHp(self.getHp() * -1);
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
	public void reset(AIActionParam param,DmcSceneObject self, AITendencyParam currentTendency) {
		
	}

	@Override
	public boolean isOver(DmcSceneObject self, AIActionParam param,Collection<AIEvent> aiEvents) {
		return true;
	}

}
