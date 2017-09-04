package com.game2sky.prilib.core.socket.logic.battle.newAi.action;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.threshold.AIThresholdParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;
import com.game2sky.publib.communication.game.struct.FPoint3;

/**
 * ai动作参数
 * @author shadow
 *
 */
public class AOIActionParam {
	
	private int id;
	private AIThresholdParam threshold;
	private List<IAIEvent> event;
	private AIActionReason reason;
	private List<DmcSceneObject> targetObjects;
	private List<FPoint3> targetPoints;
	private FPoint3 direction;
	private boolean firstAction;
	private String param;
	private AOIActionParam nextAction;
	
	public AOIActionParam() {
		
	}

	public AIThresholdParam getWaitingThreshold() {
		return null;
	}

	public List<IAIEvent> getWaitingEvent() {
		return null;
	}

	public AIActionReason getActionReason() {
		return null;
	}

	public List<DmcSceneObject> getActionTargetObjects() {
		return null;
	}

	public List<FPoint3> getActionTargetPoints() {
		return null;
	}


	public FPoint3 getActionDirection() {
		return null;
	}


	public boolean isFirstDo() {
		return false;
	}


	public String getParam() {
		return null;
	}


	public AOIActionParam getNextActionParam() {
		return null;
	}


	public void resetParam() {
		
	}


	public void stop() {
		AIActionEnum.getAction(id).stop();
	}


	public void doAction(DmcSceneObject self) {
		AIActionEnum.getAction(id).doAction(self,this);
	}

}
