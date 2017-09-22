package com.shadowFrame.ai.dict;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.shadowFrame.ai.strategy.AIStrategyEnum;

/**
 * ai策略表
 *
 * @author shadow
 * @version v0.1 2017年9月16日 下午3:48:27  shadow
 */
public class DictAiStrategy extends DictAiStrategyVO{

	public static Map<Integer, DictAiStrategy> cache = new HashMap<Integer, DictAiStrategy>();

	public void init(List<DictAiStrategy> l) {
		for (Object object : l) {
			DictAiStrategy element = (DictAiStrategy) object;
			cache.put(element.getId(), element);
		}
	}

	public boolean checkData() {
		for (DictAiStrategy strategy : cache.values()) {
			if (AIStrategyEnum.getStrategy(strategy.getStrartegyId()) == null) {
				return false;
			}
			if (!AIDictUtils.allEventsExist(strategy.getEnterEvents())) {
				return false;
			}
			if (!AIDictUtils.allThresholdsExist(strategy.getEnterThresholds())) {
				return false;
			}
			if (!AIDictUtils.allTendencyExist(strategy.getTendencys())) {
				return false;
			}
			if (!AIDictUtils.allEventsExist(strategy.getOverEvents())) {
				return false;
			}
			if (!AIDictUtils.allThresholdsExist(strategy.getOverThresholds())) {
				return false;
			}
		}
		return true;
	}
	
}
