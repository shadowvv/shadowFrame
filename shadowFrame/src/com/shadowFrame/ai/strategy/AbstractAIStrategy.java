package com.shadowFrame.ai.strategy;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.List;

import com.shadowFrame.ai.AITransfer;
import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.tendency.AITendencyParam;

/**
 * ai策略基类
 * @author shadow
 *
 */
public abstract class AbstractAIStrategy implements IAIStrategy {

	@Override
	public AITendencyParam getTendency(SceneObject self, AIStrategyParam strategyParam) {
		AITendencyParam nextTendency = null;
		List<AITendencyParam> params = strategyParam.getTendencyList();
		for (int i = 0; i < params.size(); i++) {
			List<AITendencyParam> samePriority = new ArrayList<AITendencyParam>();
			AITendencyParam param1 = params.get(i);
			samePriority.add(param1);
			int j = i + 1;
			for (; j < params.size(); j++) {
				AITendencyParam param2 = params.get(j);
				if (param1.getPriority() == param2.getPriority()) {
					samePriority.add(param2);
				} else {
					break;
				}
			}
			i = j - 1;
			AITendencyParam tendency = getTendencyParam(samePriority);
			if(tendency.CanEnterTendency(self)){
				nextTendency = tendency;
				break;
			}
		}
		return nextTendency;
	}

	private AITendencyParam getTendencyParam(List<AITendencyParam> samePriority) {
		int[] weights = new int[samePriority.size()];
		for (int i = 0; i < samePriority.size(); i++) {
			weights[i] = samePriority.get(i).getWeight();
		}
		int index = randomSelectByFrequency(weights, null);
		return samePriority.get(index);
	}

	private int randomSelectByFrequency(int[] frequencies, BitSet excludeIndexSet) {
		if (frequencies == null) {
			throw new IllegalArgumentException("frequencies is null");
		}
		if (frequencies.length == 0) {
			return -1;
		}
		int fromIndex = 0;
		int toIndex = frequencies.length;
		int total = 0;
		for (int i = fromIndex; i < toIndex; i++) {
			if (excludeIndexSet != null && excludeIndexSet.get(i)) {
				continue;
			}
			if (frequencies[i] < 0) {
				// 非法频率数据
				throw new IllegalArgumentException(
						"frequency must not be negative. freqencies:"
								+ Arrays.toString(frequencies));
			}
			total += frequencies[i];
		}
		if (total <= 0) {
			// 没有发生的事件
			return -1;
		}
		int randomNum = random(1, total), happenIndex = -1;
		int partSum = 0;
		for (int i = fromIndex; i < toIndex; i++) {
			if (excludeIndexSet != null && excludeIndexSet.get(i)) {
				continue;
			}
			partSum += frequencies[i];
			if (randomNum <= partSum) {
				happenIndex = i;
				break;
			}
		}
		return happenIndex;
	}
	
	private int random(int low, int hi) {
		return (int) (low + (hi - low + 0.9) * Math.random());
	}

	@Override
	public boolean CanEnterStrategy(SceneObject self, AIStrategyParam strategyParam) {
		if(AITransfer.transfer(strategyParam.getEnterStrategyThresholds(), strategyParam.getEnterStrategyEvents(), self)){
			return true;
		}
		return false;
	}
	
	@Override
	public boolean isOver(SceneObject self,AIStrategyParam strategyParam) {
		if((strategyParam.getOverThresholds() == null || strategyParam.getOverThresholds().size() == 0) && (strategyParam.getOverEvents() == null || strategyParam.getOverEvents().size() == 0)){
			return false;
		}
		if(AITransfer.transfer(strategyParam.getOverThresholds(), strategyParam.getOverEvents(), self)){
			return true;
		}
		return false;
	}

}
