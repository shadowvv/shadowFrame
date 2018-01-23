package com.shadowFrame.ai.action;

import java.util.Collection;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.tendency.AITendencyParam;

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
		self.changeHp(self.getHp() * -1);
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
	public void reset(AIActionParam param,SceneObject self, AITendencyParam currentTendency) {
		
	}

	@Override
	public boolean isOver(SceneObject self, AIActionParam param,Collection<AIEvent> aiEvents) {
		return true;
	}

}
