package com.shadowFrame.ai;

import java.util.ArrayList;
import java.util.List;

import com.shadowFrame.ai.event.AIEvent;

public class SceneObject {
	
	List<AIEvent> aiEvents;
	NewAIComponent newAi;
	
	public SceneObject() {
		aiEvents = new ArrayList<AIEvent>();
		newAi = new NewAIComponent(this, true);
	}

	public List<AIEvent> getAIEvents() {
		return aiEvents;
	}

	public NewAIComponent getAiCompnent() {
		return newAi;
	}

	public int getDmcHp() {
		return 0;
	}

	public int getSpawnTime() {
		return 0;
	}

	public FPoint3 getPos() {
		return null;
	}

	public FPoint3 getDir() {
		return null;
	}

	public long getId() {
		return 0;
	}

	public int getType() {
		return 0;
	}

	public int getVigilanceRange() {
		return 0;
	}

}
