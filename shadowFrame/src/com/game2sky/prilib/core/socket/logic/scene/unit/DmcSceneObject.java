package com.game2sky.prilib.core.socket.logic.scene.unit;

import java.util.ArrayList;
import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.NewAIComponent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEvent;
import com.game2sky.prilib.core.socket.logic.properties.BProperty;
import com.game2sky.publib.communication.game.struct.FPoint3;
import com.game2sky.publib.socket.logic.scene.unit.SceneObject;

public class DmcSceneObject extends SceneObject{
	
	List<AIEvent> aiEvents;
	NewAIComponent newAi;
	RoleStateManager stateManage;
	
	public DmcSceneObject() {
		aiEvents = new ArrayList<AIEvent>();
		newAi = new NewAIComponent(this, true);
		stateManage = new RoleStateManager();
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

	public RoleStateManager getRoleStateManager() {
		return stateManage;
	}

	public int getBProperty(BProperty hpMax) {
		return 0;
	}

	public long getId() {
		return 0;
	}

	public Scene getScene() {
		return null;
	}

	public SceneObjectType getType() {
		return null;
	}

	public int getVigilanceRange() {
		return 0;
	}

}
