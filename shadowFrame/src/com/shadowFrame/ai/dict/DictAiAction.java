package com.shadowFrame.ai.dict;

import java.util.HashMap;
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
	
	@Override
	public boolean checkData() {
		for (DictAiAction action : cache.values()) {
			if(AIActionEnum.getAction(action.getActionId()) == null){
				
			}
			if(AITargetObjectCampEnum.getTargetComp(action.getTargetCampType()) == null){
				
			}
			if(!AIDictUtils.allConditionExist(action.getInterruptCondition())){
				
			}
			if(!AIDictUtils.allConditionExist(action.getOverCondition())){
				
			}
		}
		return super.checkData();
	}
	
}
