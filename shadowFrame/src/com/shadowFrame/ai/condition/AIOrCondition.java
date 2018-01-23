package com.shadowFrame.ai.condition;

import java.util.Collection;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.threshold.AIThresholdParam;

/**
 * ||添加判断
 *
 * @author shadow
 * @version v0.1 2017年12月18日 下午5:23:43  shadow
 */
public class AIOrCondition extends AbstractAICondition {

	public AIOrCondition() {
	}

	@Override
	public boolean match(DmcSceneObject self,Collection<AIEvent> aiEvents) {
		if(thresholds == null && events == null && conditions == null){
			return true;
		}
		if(conditions != null){
			for (AbstractAICondition abstractAICondition : conditions) {
				if(abstractAICondition.match(self,aiEvents)){
					return true;
				}
			}
		}
		if(thresholds != null){
			for (AIThresholdParam threshold : thresholds) {
				if(threshold.overThreshold(self)){
					return true;
				}
			}			
		}
		if(events != null){
			for (AIEvent param : events) {
				boolean match = false;
				for (AIEvent aoiEvent : aiEvents) {
					if(param.match(aoiEvent)){
						match = true;
						break;
					}
				}
				if(match){
					return true;
				}
			}			
		}
		return false;
	}

}
