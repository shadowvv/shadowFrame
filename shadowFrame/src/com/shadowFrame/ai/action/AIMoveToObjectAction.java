package com.shadowFrame.ai.action;

import java.util.Collection;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.tendency.AITendencyParam;

/**
 * 移动到场景物体动作
 * @author shadow
 *
 */
public class AIMoveToObjectAction implements IAIAction {

	@Override
	public boolean doAction(SceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		@SuppressWarnings("unused")
		SceneObject target = param.getActionTargetObjects(self).get(0);
		return false;
	}

	@Override
	public boolean checkAction(SceneObject self, AIActionParam param) {
 		SceneObject target = param.getActionTargetObjects(self).get(0);
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
		String[] params = param.getParam().split(":");
		String type = params[0];
		float dis = 0;
		if(type.equals("common")){
			dis = Float.parseFloat(params[1]);
		}else if(type.equals("skill")){

		}
		param.setCurrentParam(dis+"");
	}

	@Override
	public boolean isOver(SceneObject self, AIActionParam param,Collection<AIEvent> aiEvents) {
		if(param.getActionTargetObjects(self).size() == 0){
			return true;
		}
		@SuppressWarnings("unused")
		SceneObject target = param.getActionTargetObjects(self).get(0);
		@SuppressWarnings("unused")
		float dis = Float.parseFloat(param.getCurrentParam());
		return false;
	}

}
