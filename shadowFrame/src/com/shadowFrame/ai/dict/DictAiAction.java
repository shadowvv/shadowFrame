package com.shadowFrame.ai.dict;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.shadowFrame.ai.action.AIActionEnum;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;

/**
 * ai动作表
 *
 * @author shadow
 * @version v0.1 2017年9月16日 下午3:05:36  shadow
 */
public class DictAiAction extends DictAiActionVO{

	public static Map<Integer, DictAiAction> cache = new HashMap<Integer, DictAiAction>();
	
	public void init(List<DictAiAction> l) {
		for (Object object : l) {
			DictAiAction element = (DictAiAction) object;
			cache.put(element.getId(), element);
		}
	}
	
	public boolean checkData() {
		for (DictAiAction action : cache.values()) {
			if(AIActionEnum.getAction(action.getActionId()) == null){
				return false;
			}
			if(AITargetObjectCampEnum.getTargetComp(action.getTargetCampType()) == null){
				return false;
			}
			if(!AIDictUtils.allEventsExist(action.getEnterEvents())){
				return false;
			}
			if(!AIDictUtils.allThresholdsExist(action.getEnterThresholds())){
				return false;
			}
			if(!AIDictUtils.allEventsExist(action.getInterruptEvents())){
				return false;
			}
			if(!AIDictUtils.allThresholdsExist(action.getInterruptThresholds())){
				return false;
			}
			if(action.getMiddleActionId() != 0 && cache.get(action.getMiddleActionId()) == null){
				return false;
			}
		}
		return true;
	}
	
}
