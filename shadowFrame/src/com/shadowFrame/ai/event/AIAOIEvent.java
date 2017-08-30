package com.shadowFrame.ai.event;

import java.util.List;

import com.shadowFrame.ai.AISceneObjectCampType;
import com.shadowFrame.ai.DmcSceneObject;

public class AIAOIEvent implements IAIAOIEvent{

	@Override
	public AIAOIEventType getEventType() {
		return null;
	}

	@Override
	public AISceneObjectCampType getEventCampType() {
		return null;
	}

	@Override
	public DmcSceneObject getSource() {
		return null;
	}

	@Override
	public List<DmcSceneObject> getObservers() {
		return null;
	}

	@Override
	public List<DmcSceneObject> getTargets() {
		return null;
	}

	@Override
	public String getParam() {
		return null;
	}

	@Override
	public int getEventHatredValue() {
		return 0;
	}

	@Override
	public AIAOIEventParam toEventParam(DmcSceneObject self) {
		// TODO Auto-generated method stub
		return null;
	}

}
