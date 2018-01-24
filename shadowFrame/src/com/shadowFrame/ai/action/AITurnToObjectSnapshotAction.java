package com.shadowFrame.ai.action;

import java.util.Collection;

import com.shadowFrame.ai.FPoint3;
import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.tendency.AITendencyParam;

/**
 * 转向到物体快照
 *
 * @author shadow
 * @version v0.1 2017年11月8日 下午7:08:25  shadow
 */
public class AITurnToObjectSnapshotAction implements IAIAction{

	@Override
	public boolean doAction(SceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		@SuppressWarnings("unused")
		FPoint3 target = param.getActionTargetPoints().get(0);
		return true;
	}

	@Override
	public boolean checkAction(SceneObject self, AIActionParam param) {
		FPoint3 target = param.getActionTargetPoints().get(0);
		if (target == null) {
			return false;
		}	
		return true;
	}

	@Override
	public void stop(SceneObject self) {

	}

	@Override
	public void reset(AIActionParam param,SceneObject self, AITendencyParam currentTendency) {
		SceneObject target = param.getActionTargetObjects(self).get(0);
		if(target == null){
			return;
		}
		param.getActionTargetPoints().clear();
		param.getActionTargetPoints().add(target.getPos());
	}

	@Override
	public boolean isOver(SceneObject self, AIActionParam param,Collection<AIEvent> aiEvents) {
		FPoint3 target = param.getActionTargetPoints().get(0);
		if(target == null){
			return true;
		}
		return false;
	}

}
