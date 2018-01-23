package com.shadowFrame.ai.action;

import java.util.Collection;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.tendency.AITendencyParam;

/**
 * 待机动作
 * 
 * @author shadow
 *
 */
public class AIIdleAction implements IAIAction {

	@Override
	public boolean doAction(SceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		self.getRoleActionManager().stopMove();
		return true;
	}

	@Override
	public boolean checkAction(SceneObject self, AIActionParam param) {
		if(self.getRoleStateManager().getCurActionState().equals(ActionState.STANDING)){
			return false;
		}
		if (!self.getRoleStateManager().canEnter(ActionState.STANDING)) {
			return false;
		}
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
