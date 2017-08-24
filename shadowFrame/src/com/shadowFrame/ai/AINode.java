package com.shadowFrame.ai;

import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class AINode implements IAINode {
	
	private Map<Integer, IAIState> aiStates;
	private Map<Integer, List<IAITransitionParam>> transitionData;
	
	private IAIState currentState;
	private SceneObject self;
	
	public AINode(SceneObject self) {
		this.self = self;
		aiStates = new HashMap<Integer, IAIState>();
		transitionData = new HashMap<Integer, List<IAITransitionParam>>();
	}

	@Override
	public void initNode(Map<IAIState, List<IAITransitionParam>> config) {
		for (Entry<IAIState, List<IAITransitionParam>> entry : config.entrySet()) {
			aiStates.put(entry.getKey().getStateId(), entry.getKey());
			Collections.sort(entry.getValue(),new Comparator<IAITransitionParam>() {
				@Override
				public int compare(IAITransitionParam o1, IAITransitionParam o2) {
					return o1.getPriorityLevel() - o2.getPriorityLevel();
				}
			});
			transitionData.put(entry.getKey().getStateId(), entry.getValue());
		}
	}

	@Override
	public void doNextAction(IAOIEvent event) {
		IAIState transitToState = null;
		for (IAITransitionParam param : transitionData.get(currentState.getStateId())) {
			transitToState = AITransitioner.getInstance().getNextAIState(self, event, param);
			if(transitToState != null){
				currentState = transitToState;
				break;
			}
		}
		currentState.doAction(self);
	}

	@Override
	public String getCurrentStateName() {
		return currentState.getStateName();
	}

	@Override
	public int getCurrentStateId() {
		return currentState.getStateId();
	}

}
