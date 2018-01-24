package com.shadowFrame.ai.dict;

import java.util.HashMap;
import java.util.Map;

import com.shadowFrame.ai.condition.event.AIEventEnum;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;

/**
 * Ai事件表
 *
 * @author shadow
 * @version v0.1 2017年9月16日 下午3:07:00  shadow
 */
public class DictAiEvent extends DictAiEventVO{

	public static Map<Integer, DictAiEvent> cache = new HashMap<Integer, DictAiEvent>();
	
	@Override
	public boolean checkData() {
		for (DictAiEvent event : cache.values()) {
			if(AIEventEnum.getEvent(event.getEventId()) == null){
				
			}
			if(AITargetObjectCampEnum.getTargetComp(event.getTargetCampType()) == null){
				
			}
		}
		return super.checkData();
	}
	
}
