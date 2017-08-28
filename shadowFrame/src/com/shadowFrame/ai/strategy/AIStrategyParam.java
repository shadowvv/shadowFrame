package com.game2sky.prilib.core.socket.logic.battle.newAi.strategy;

import java.util.ArrayList;
import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIAOIEventParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.tendency.IAITendencyParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.threshold.IAIThresholdParam;

public class AIStrategyParam implements IAIStrategyParam{
	
	private IAIStrategy strategy;
	private IAIThresholdParam threshold;
	private IAIAOIEventParam event;
	private List<IAITendencyParam> tendencys;
	
	public AIStrategyParam(IAIStrategy strategy,IAIThresholdParam threshold,IAIAOIEventParam event) {
		this.strategy = strategy;
		this.threshold = threshold;
		this.event = event;
		tendencys = new ArrayList<IAITendencyParam>();
	}

	@Override
	public IAIStrategy getStrategy() {
		return strategy;
	}

	@Override
	public IAIThresholdParam getEnterStrategyThreshold() {
		return threshold;
	}

	@Override
	public IAIAOIEventParam getEnterStrategyEvent() {
		return event;
	}

	@Override
	public void addTendency(IAITendencyParam tendency) {
		tendencys.add(tendency);		
	}

	@Override
	public List<IAITendencyParam> getTendencyList() {
		return tendencys;
	}

}
