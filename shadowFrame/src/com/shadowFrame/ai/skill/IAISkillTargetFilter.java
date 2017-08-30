package com.shadowFrame.ai.skill;

import java.util.List;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.hatred.AIHatredMeter;

public interface IAISkillTargetFilter {

	List<DmcSceneObject> filter(AIHatredMeter hatredMeter);
	
}
