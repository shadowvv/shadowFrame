package com.shadowFrame.ai.strategy;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.tendency.AITendencyParam;


/**
 * ai一般策略处理方法
 * @author shadow
 *
 */
public class AIVigilanceStrategy implements IAIStrategy {
	
	@Override
	public AITendencyParam getTendency(DmcSceneObject self, AIStrategyParam strategyParam,Collection<AIEvent> aiEvents) {
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
			if(tendency.CanEnterTendency(self,aiEvents)){
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
		int index = MathUtils.randomSelectByFrequency(weights, null);
		return samePriority.get(index);
	}
	
}
