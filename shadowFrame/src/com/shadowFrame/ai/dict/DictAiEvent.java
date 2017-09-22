package com.shadowFrame.ai.dict;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.shadowFrame.ai.event.AIEventEnum;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;

/**
 * Ai事件表
 *
 * @author shadow
 * @version v0.1 2017年9月16日 下午3:07:00  shadow
 */
public class DictAiEvent extends DictAiEventVO{

public static Map<Integer, DictAiEvent> cache = new HashMap<Integer, DictAiEvent>();
	
	public void init(List<DictAiEvent> l) {
		for (Object object : l) {
			DictAiEvent element = (DictAiEvent) object;
			cache.put(element.getId(), element);
		}
	}
	
	public boolean checkData() {
		for (DictAiEvent event : cache.values()) {
			if(AIEventEnum.getEvent(event.getEventId()) == null){
				return false;
			}
			if(AITargetObjectCampEnum.getTargetComp(event.getTargetCampType()) == null){
				return false;
			}
		}
		return true;
	}
	
}
