package com.shadowFrame.ai.dict;

import java.util.HashMap;
import java.util.Map;

import com.shadowFrame.ai.tendency.AITendencyEnum;

/**
 * ai行为表
 *
 * @author shadow
 * @version v0.1 2017年9月16日 下午3:48:07  shadow
 */
public class DictAiTendency extends DictAiTendencyVO {

	public static Map<Integer, DictAiTendency> cache = new HashMap<Integer, DictAiTendency>();

	@Override
	public boolean checkData() {
		for (DictAiTendency tendency : cache.values()) {
			if (AITendencyEnum.getTendency(tendency.getTendencyId()) == null) {
				
			}
			if (!AIDictUtils.allConditionExist(tendency.getEnterCondition())) {
				
			}
			if (tendency.getPerAction() != 0 && DictAiAction.cache.get(tendency.getPerAction()) == null) {
				
			}
			if (tendency.getMainAction1() != 0 && DictAiAction.cache.get(tendency.getMainAction1()) == null) {
				
			}
			if (tendency.getMainAction2() != 0 && DictAiAction.cache.get(tendency.getMainAction2()) == null) {
				
			}
			if (tendency.getMainAction3() != 0 && DictAiAction.cache.get(tendency.getMainAction3()) == null) {
				
			}
			if (tendency.getClearAction() != 0 && DictAiAction.cache.get(tendency.getClearAction()) == null) {
				
			}
			if (!AIDictUtils.allConditionExist(tendency.getOverCondition())) {
				
			}
			if(tendency.getNextTendency() != 0 && !cache.containsKey(tendency.getNextTendency())){
				
			}
		}
		return super.checkData();
	}

}
