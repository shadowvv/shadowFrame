package com.shadowFrame.ai.hatred;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.event.IAIAOIEvent;
import com.shadowFrame.ai.skill.IAISkillTargetFilter;

public class AIHatredMeter {

	private Map<Long, DmcSceneObject> hatredObject;
	private Map<Long, Integer> hatredMeter;
	private Map<Long, Long> damageMeter;
	
	private DmcSceneObject self;

	public AIHatredMeter(DmcSceneObject self) {
		this.self = self;
		hatredObject = new HashMap<Long, DmcSceneObject>();
		hatredMeter = new HashMap<Long, Integer>();
		damageMeter = new HashMap<Long, Long>();
	}

	public List<DmcSceneObject> getTarget(IAISkillTargetFilter skillTargetFilter) {
		return skillTargetFilter.filter(this);
	}
	
	public void onAoiEvent(IAIAOIEvent event){
		DmcSceneObject source = event.getSource();
		int value = event.getEventHatredValue();
		
		if (hatredObject.containsKey(source.getId())) {
			value = value + hatredMeter.get(source.getId());
		} else {
			hatredObject.put(source.getId(), source);
		}
		value = value < 0 ? 0 : value;
		hatredMeter.put(source.getId(), value);
	}
	
}
