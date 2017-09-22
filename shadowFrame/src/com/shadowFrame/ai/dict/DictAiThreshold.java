package com.shadowFrame.ai.dict;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.shadowFrame.ai.target.AITargetObjectCampEnum;
import com.shadowFrame.ai.threshold.AIThresholdEnum;
import com.shadowFrame.ai.threshold.AIValueCompareEnum;

/**
 * ai门槛表
 *
 * @author shadow
 * @version v0.1 2017年9月16日 下午3:07:10  shadow
 */
public class DictAiThreshold extends DictAiThresholdVO{

	public static Map<Integer, DictAiThreshold> cache = new HashMap<Integer, DictAiThreshold>();
	
	public void init(List<DictAiThreshold> l) {
		for (Object object : l) {
			DictAiThreshold element = (DictAiThreshold) object;
			cache.put(element.getId(), element);
		}
	}
	
	public boolean checkData() {
		for (DictAiThreshold threshold : cache.values()) {
			if(AIThresholdEnum.getThreshold(threshold.getThresholdId()) == null){
				return false;
			}
			if(AITargetObjectCampEnum.getTargetComp(threshold.getTargetCampType()) == null){
				return false;
			}
			if(AIValueCompareEnum.getCompare(threshold.getCampareType()) == null){
				return false;
			}
		}
		return true;
	}
	
}
