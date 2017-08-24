package com.shadowFrame.ai;

import java.util.List;
import java.util.Map;

import com.shadowFrame.ai.aoiEvent.IAIAOIEvent;
import com.shadowFrame.ai.strategy.IAIStrategy;
import com.shadowFrame.ai.tendency.IAITendency;
import com.shadowFrame.ai.tendency.IAITendencyParam;
import com.shadowFrame.ai.transfer.IAITransfer;

public class SceneObject {
	
	Map<IAIStrategy, List<IAITransfer>> transferData;
	Map<IAITendency, List<IAITendencyParam>> tendencyData;
	
	
	List<IAIAOIEvent> aoiEventList;
	List<SceneObject> hatredList;
	IAIStrategy currentStrategy;
	
	IAIAction moveAction;
	IAIAction skillAction;
	
	public SceneObject() {
		
	}
	
	public void addAoiEvent(IAIAOIEvent event){
		aoiEventList.add(event);
	}
	
	public void tick(long current,long interval){
		perception();
	}
	
	private void perception(){
		List<IAITransfer> transferList = transferData.get(currentStrategy);
		IAIStrategy nextStrategy = null;
		for (IAITransfer transfer : transferList) {
			nextStrategy = transfer.transfer(aoiEventList);
			if(!nextStrategy.equals(currentStrategy)){
				break;
			}
		}
		currentStrategy = nextStrategy;
		IAITendency tendency = currentStrategy.getTendency();
		moveAction = tendency.getMoveAction(this);
		skillAction = tendency.getSkillAction(this);
		moveAction.doAction();
		skillAction.doAction();
	}
}
