package com.game2sky.prilib.core.socket.logic.battle.newAi.action;

import java.util.ArrayList;
import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.target.AITargetObjectCampEnum;
import com.game2sky.prilib.core.socket.logic.battle.newAi.threshold.AIThresholdParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;
import com.game2sky.publib.communication.game.struct.FPoint3;

/**
 * ai动作参数
 * @author shadow
 *
 */
public class AIActionParam {
	
	private int id;
	private AITargetObjectCampEnum campType;
	private AIActionReason reason;
	private String param;
	private List<AIThresholdParam> thresholds;
	private List<AIEvent> events;
	private AIActionParam nextAction;
	
	private boolean firstAction;
	private FPoint3 direction;
	private List<DmcSceneObject> targetObjects;
	private List<FPoint3> targetPoints;
	
	public AIActionParam() {
		events = new ArrayList<AIEvent>();
		targetObjects = new ArrayList<DmcSceneObject>();
		targetPoints = new ArrayList<FPoint3>();
		thresholds = new ArrayList<AIThresholdParam>();
	}
	
	public void setDirection(FPoint3 direction) {
		this.direction = direction;
	}
	
	public void setFirstAction(boolean firstAction) {
		this.firstAction = firstAction;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public void setNextAction(AIActionParam nextAction) {
		this.nextAction = nextAction;
	}
	
	public void setParam(String param) {
		this.param = param;
	}
	
	public void setReason(AIActionReason reason) {
		this.reason = reason;
	}

	public List<AIThresholdParam> getWaitingThresholds() {
		return thresholds;
	}

	public List<AIEvent> getWaitingEvents() {
		return events;
	}

	public AIActionReason getActionReason() {
		return reason;
	}

	public List<DmcSceneObject> getActionTargetObjects() {
		return targetObjects;
	}

	public List<FPoint3> getActionTargetPoints() {
		return targetPoints;
	}


	public FPoint3 getActionDirection() {
		return direction;
	}


	public boolean isFirstDo() {
		return firstAction;
	}


	public String getParam() {
		return param;
	}


	public AIActionParam getNextActionParam() {
		return nextAction;
	}
	
	public void addWaitingThreshold(AIThresholdParam threshold) {
		thresholds.add(threshold);
	}

	public void addWaitingEvent(AIEvent event) {
		events.add(event);
	}


	public void resetParam() {
		firstAction = true;
		AIActionEnum.getAction(id).resetParam(this);
	}


	public void stop() {
		AIActionEnum.getAction(id).stop();
	}


	public void doAction(DmcSceneObject self) {
		AIActionEnum.getAction(id).doAction(self,this);
	}

	public void setActionTargetType(AITargetObjectCampEnum campType) {
		this.campType = campType;
	}
	
	public AITargetObjectCampEnum getCampType() {
		return campType;
	}

	public String getName() {
		return AIActionEnum.getAction(id).getName();
	}

}
