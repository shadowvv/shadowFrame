package com.shadowFrame.ai.strategy;

import com.shadowFrame.ai.tendency.IAITendencyParam;

public interface IAIStrategy {

	String getName();
	
	int getId();

	IAITendencyParam getTendency();
	
}
