package com.game2sky.prilib.core.socket.logic.battle.newAi.strategy;

import com.game2sky.prilib.core.socket.logic.battle.newAi.AITransfer;
import com.game2sky.prilib.core.socket.logic.battle.newAi.tendency.AITendencyParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * ai策略基类
 * @author shadow
 *
 */
public abstract class AbstractAIStrategy implements IAIStrategy {

	@Override
	public AITendencyParam getTendency(DmcSceneObject self, AIStrategyParam strategyParam) {
		AITendencyParam nextTendency = null;
		for (AITendencyParam tendencyParam : strategyParam.getTendencyList()) {
			if(tendencyParam.CanEnterTendency(self)){
				nextTendency = tendencyParam;
				break;
			}
		}
		return nextTendency;
	}

	@Override
	public boolean CanEnterStrategy(DmcSceneObject self, AIStrategyParam strategyParam) {
		if(AITransfer.transfer(strategyParam.getEnterStrategyThresholds(), strategyParam.getEnterStrategyEvents(), self)){
			return true;
		}
		return false;
	}

}
