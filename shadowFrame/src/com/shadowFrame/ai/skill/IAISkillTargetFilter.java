package com.game2sky.prilib.core.socket.logic.battle.newAi.skill;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.hatred.AIHatredMeter;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

public interface IAISkillTargetFilter {

	List<DmcSceneObject> filter(AIHatredMeter hatredMeter);
	
}
