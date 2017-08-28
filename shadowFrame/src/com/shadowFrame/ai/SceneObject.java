package com.shadowFrame.ai;

import java.util.List;
import java.util.Map;

import com.shadowFrame.ai.action.IAIActionParam;
import com.shadowFrame.ai.aoiEvent.IAIAOIEvent;
import com.shadowFrame.ai.strategy.IAIStrategy;
import com.shadowFrame.ai.strategy.IAIStrategyParam;
import com.shadowFrame.ai.tendency.IAITendency;
import com.shadowFrame.ai.tendency.IAITendencyParam;

public class SceneObject {

	List<IAIStrategyParam> StrategyTransferData;
	Map<IAIStrategy, List<IAITendencyParam>> StrategyData;
	
	List<IAIAOIEvent> aoiEventList;
	List<SceneObject> hatredList;
	
	IAIStrategy currentStrategy;
	IAITendency currentTendency;
	
	public SceneObject(IAIStrategy aiStrategy) {
		currentStrategy = aiStrategy;
	}
	
	public void addAoiEvent(IAIAOIEvent event){
		aoiEventList.add(event);
	}
	
	public void tick(long current,long interval){
		perception();
	}
	
	private void perception(){
		IAIStrategy nextStrategy = null;
		for (IAIStrategyParam transfer : StrategyTransferData) {
			if(transfer.transfer(this,aoiEventList) && !transfer.getStrategy().equals(currentStrategy)){
				nextStrategy = transfer.getToStrategy();
				break;
			}
		}
		if(nextStrategy != null){
			currentStrategy = nextStrategy;
			if(currentTendency != null){
				currentTendency.stop();
			}
			for (IAITendencyParam tendency : StrategyData.get(currentStrategy)) {				
				IAIActionParam action = currentTendency.getNextAction(this, aoiEventList, tendency);
				action.getAction().doAction(this, action);
			}
		}
		
	}

	public void stopMove() {
		// TODO 自动生成的方法存根
	}
}
