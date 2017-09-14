package com.game2sky.prilib.core.socket.logic.battle.newAi.strategy;

import java.util.ArrayList;
import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.AITransfer;
import com.game2sky.prilib.core.socket.logic.battle.newAi.tendency.AITendencyParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;
import com.game2sky.publib.framework.util.MathUtils;

/**
 * ai策略基类
 * @author shadow
 *
 */
public abstract class AbstractAIStrategy implements IAIStrategy {

	@Override
	public AITendencyParam getTendency(DmcSceneObject self, AIStrategyParam strategyParam) {
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
		int index = MathUtils.randomSelectByFrequency(weights, null);
		return samePriority.get(index);
	}

	@Override
	public boolean CanEnterStrategy(DmcSceneObject self, AIStrategyParam strategyParam) {
		if(AITransfer.transfer(strategyParam.getEnterStrategyThresholds(), strategyParam.getEnterStrategyEvents(), self)){
			return true;
		}
		return false;
	}
	
	@Override
	public boolean isOver(DmcSceneObject self,AIStrategyParam strategyParam) {
		if((strategyParam.getOverThresholds() == null || strategyParam.getOverThresholds().size() == 0) && (strategyParam.getOverEvents() == null || strategyParam.getOverEvents().size() == 0)){
			return false;
		}
		if(AITransfer.transfer(strategyParam.getOverThresholds(), strategyParam.getOverEvents(), self)){
			return true;
		}
		return false;
	}

}
