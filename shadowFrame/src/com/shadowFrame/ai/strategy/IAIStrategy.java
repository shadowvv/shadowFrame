package com.shadowFrame.ai.strategy;

import com.shadowFrame.ai.tendency.IAITendency;

public interface IAIStrategy {

	String getName();
	
	int getId();

	IAITendency getTendency();
	
	
	
}
