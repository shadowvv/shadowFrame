package com.shadowFrame.ai.action;

import java.util.List;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.FPoint3;
import com.shadowFrame.ai.event.IAIAOIEvent;
import com.shadowFrame.ai.threshold.IAIThresholdParam;

public class AIActionParam implements IAIActionParam{

	@Override
	public IAIThresholdParam getWaitingThreshold() {
		return null;
	}

	@Override
	public List<IAIAOIEvent> getWaitingEvent() {
		return null;
	}

	@Override
	public AIActionReason getActionReason() {
		return null;
	}

	@Override
	public List<DmcSceneObject> getActionTargetObjects() {
		return null;
	}

	@Override
	public List<FPoint3> getActionTargetPoints() {
		return null;
	}

	@Override
	public FPoint3 getActionDirection() {
		return null;
	}

	@Override
	public boolean isFirstDo() {
		return false;
	}

	@Override
	public IAIAction getAction() {
		return null;
	}

	@Override
	public String getParam() {
		return null;
	}

	@Override
	public IAIActionParam getNextActionParam() {
		return null;
	}

	@Override
	public void resetParam() {
		
	}

}
