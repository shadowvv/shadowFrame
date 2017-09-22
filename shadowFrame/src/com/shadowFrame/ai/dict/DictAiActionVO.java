package com.shadowFrame.ai.dict;



/**
 * 
 * @author shadow
 */
public class DictAiActionVO {

	protected int id;
	
	protected int actionId;
	
	protected String param;
	
	protected int targetCampType;
	
	protected String enterThresholds;
	
	protected String enterEvents;
	
	protected String interruptThresholds;
	
	protected String interruptEvents;
	
	protected int middleActionId;

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public int getActionId() {
		return this.actionId;
	}

	public void setActionId(int actionId) {
		this.actionId = actionId;
	}
	public String getParam() {
		return this.param;
	}

	public void setParam(String param) {
		this.param = param;
	}
	public int getTargetCampType() {
		return this.targetCampType;
	}

	public void setTargetCampType(int targetCampType) {
		this.targetCampType = targetCampType;
	}
	public String getEnterThresholds() {
		return this.enterThresholds;
	}

	public void setEnterThresholds(String enterThresholds) {
		this.enterThresholds = enterThresholds;
	}
	public String getEnterEvents() {
		return this.enterEvents;
	}

	public void setEnterEvents(String enterEvents) {
		this.enterEvents = enterEvents;
	}
	public String getInterruptThresholds() {
		return this.interruptThresholds;
	}

	public void setInterruptThresholds(String interruptThresholds) {
		this.interruptThresholds = interruptThresholds;
	}
	public String getInterruptEvents() {
		return this.interruptEvents;
	}

	public void setInterruptEvents(String interruptEvents) {
		this.interruptEvents = interruptEvents;
	}
	public int getMiddleActionId() {
		return this.middleActionId;
	}

	public void setMiddleActionId(int middleActionId) {
		this.middleActionId = middleActionId;
	}

	@Override
	public String toString() {
		return "DictAiActionVO[id=" + id + ",actionId=" + actionId + ",param=" + param + ",targetCampType=" + targetCampType + ",enterThresholds=" + enterThresholds + ",enterEvents=" + enterEvents + ",interruptThresholds=" + interruptThresholds + ",interruptEvents=" + interruptEvents + ",middleActionId=" + middleActionId + ",]";
	}

}