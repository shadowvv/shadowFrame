package com.game2sky.prilib.core.socket.logic.battle.newAi.event;

import com.game2sky.prilib.core.socket.logic.battle.newAi.target.AITargetObjectCampEnum;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * ai事件参数
 * @author shadow
 *
 */
public class AIEvent implements IAIEvent{
	
	private AIEventEnum type;
	private AITargetObjectCampEnum campType;
	private double value;

	public AIEvent(AIEventEnum type,double value,AITargetObjectCampEnum campType) {
		this.type = type;
		this.campType = campType;
		this.value = value;
	}
	
	@Override
	public AIEventEnum getEventType() {
		return type;
	}

	@Override
	public double getEventValue() {
		return value;
	}

	public AITargetObjectCampEnum getEventCampType() {
		return campType;
	}

	@Override
	public DmcSceneObject getSource() {
		return null;
	}

	@Override
	public int getEventHatredValue() {
		return 0;
	}

	@Override
	public boolean match(IAIEvent aiEvent) {
		if(!aiEvent.getEventType().equals(type)){
			return false;
		}
		if(aiEvent.getEventValue() != value){
			return false;
		}
		return true;
	}

}
