package com.game2sky.prilib.core.socket.logic.battle.newAi.strategy;

import com.game2sky.prilib.core.socket.logic.battle.newAi.tendency.IAITendencyParam;

public interface IAIStrategy {

	String getName();
	
	int getId();

	IAITendencyParam getTendency();
	
}
