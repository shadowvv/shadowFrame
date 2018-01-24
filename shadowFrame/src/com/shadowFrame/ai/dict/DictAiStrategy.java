package com.shadowFrame.ai.dict;

import java.util.HashMap;
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

	@Override
	public boolean checkData() {
		for (DictAiStrategy strategy : cache.values()) {
			if (AIStrategyEnum.getStrategy(strategy.getStrartegyId()) == null) {
				
			}
			if (!AIDictUtils.allConditionExist(strategy.getEnterCondition())) {
				
			}
			if (!AIDictUtils.allTendencyExist(strategy.getTendencys())) {
				
			}
			if (!AIDictUtils.allConditionExist(strategy.getOverCondition())) {
				
			}
		}
		return super.checkData();
	}
	
}
