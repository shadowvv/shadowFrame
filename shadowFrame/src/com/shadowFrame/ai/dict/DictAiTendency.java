package com.shadowFrame.ai.dict;

import java.util.HashMap;
import java.util.List;
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

	public void init(List<DictAiTendency> l) {
		for (Object object : l) {
			DictAiTendency element = (DictAiTendency) object;
			cache.put(element.getId(), element);
		}
	}

	public boolean checkData() {
		for (DictAiTendency tendency : cache.values()) {
			if (AITendencyEnum.getTendency(tendency.getTendencyId()) == null) {
				return false;
			}
			if (tendency.getPerAction() != 0 && DictAiAction.cache.get(tendency.getPerAction()) == null) {
				return false;
			}
			if (tendency.getMainAction() != 0 && DictAiAction.cache.get(tendency.getMainAction()) == null) {
				return false;
			}
			if (tendency.getClearAction() != 0 && DictAiAction.cache.get(tendency.getClearAction()) == null) {
				return false;
			}
			if (!AIDictUtils.allEventsExist(tendency.getOverEvents())) {
				return false;
			}
			if (!AIDictUtils.allThresholdsExist(tendency.getOverThresholds())) {
				return false;
			}
		}
		return true;
	}

}
