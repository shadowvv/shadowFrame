package com.shadowFrame.ai;

public class DmcSceneObject {

	private ComponentAI ai = new ComponentAI(this, true);
	
	public ComponentAI getComponentAI() {
		return ai;
	}

	public long getId() {
		return 0;
	}

	public Object getCamp() {
		return null;
	}

	public int getVigilanceRange() {
		return 0;
	}

}
