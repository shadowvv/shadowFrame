package com.shadowFrame.ai.dict;



/**
 * 
 * @author shadow
 */
public class DictAiTendencyVO {

	protected int id;
	
	protected int tendencyId;
	
	protected int perAction;
	
	protected int mainAction;
	
	protected int clearAction;
	
	protected String overThresholds;
	
	protected String overEvents;
	
	protected int priority;
	
	protected int weight;

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public int getTendencyId() {
		return this.tendencyId;
	}

	public void setTendencyId(int tendencyId) {
		this.tendencyId = tendencyId;
	}
	public int getPerAction() {
		return this.perAction;
	}

	public void setPerAction(int perAction) {
		this.perAction = perAction;
	}
	public int getMainAction() {
		return this.mainAction;
	}

	public void setMainAction(int mainAction) {
		this.mainAction = mainAction;
	}
	public int getClearAction() {
		return this.clearAction;
	}

	public void setClearAction(int clearAction) {
		this.clearAction = clearAction;
	}
	public String getOverThresholds() {
		return this.overThresholds;
	}

	public void setOverThresholds(String overThresholds) {
		this.overThresholds = overThresholds;
	}
	public String getOverEvents() {
		return this.overEvents;
	}

	public void setOverEvents(String overEvents) {
		this.overEvents = overEvents;
	}
	public int getPriority() {
		return this.priority;
	}

	public void setPriority(int priority) {
		this.priority = priority;
	}
	public int getWeight() {
		return this.weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	@Override
	public String toString() {
		return "DictAiTendencyVO[id=" + id + ",tendencyId=" + tendencyId + ",perAction=" + perAction + ",mainAction=" + mainAction + ",clearAction=" + clearAction + ",overThresholds=" + overThresholds + ",overEvents=" + overEvents + ",priority=" + priority + ",weight=" + weight + ",]";
	}
}