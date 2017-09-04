package com.game2sky.prilib.core.socket.logic.battle.newAi.strategy;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.AITransfer;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.tendency.AITendencyParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * ai策略基类
 * @author shadow
 *
 */
public abstract class AbstractAIStrategy implements IAIStrategy {

	@Override
	public AITendencyParam getTendency(DmcSceneObject self, List<IAIEvent> aoiEventList, AIStrategyParam strategyParam) {
		AITendencyParam nextTendency = null;
		for (AITendencyParam tendencyParam : strategyParam.getTendencyList()) {
			if(tendencyParam.CanEnterTendency(self, aoiEventList)){
				nextTendency = tendencyParam;
				break;
			}
		}
		return nextTendency;
	}

	@Override
	public boolean CanEnterStrategy(DmcSceneObject self, List<IAIEvent> aoiEventList, AIStrategyParam strategyParam) {
		if(AITransfer.transfer(strategyParam.getEnterStrategyThreshold(), strategyParam.getEnterStrategyEvent(), self, aoiEventList)){
			return true;
		}
		return false;
	}

}
