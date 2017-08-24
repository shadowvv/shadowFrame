package com.shadowFrame.ai;

import java.util.HashMap;
import java.util.Map;

public class AITransitioner implements IAITransitioner {
	
	public static AITransitioner instance;
	
	public static AITransitioner getInstance() {
		if(instance == null){
			instance = new AITransitioner();
		}
		return instance;
	}
	
	private Map<Integer, IAITransition> aiTransitions;
	
	public AITransitioner() {
		aiTransitions = new HashMap<Integer, IAITransition>();
	}

	@Override
	public void addTransition(IAITransition transition) {
		aiTransitions.put(transition.getId(), transition);
	}
	
	@Override
	public IAIState getNextAIState(SceneObject self, IAOIEvent event, IAITransitionParam param) {
		IAITransition transition = aiTransitions.get(param.getTransitionId());
		IAIState state = transition.doTransition(self,event,param);
		return state;
	}

}
