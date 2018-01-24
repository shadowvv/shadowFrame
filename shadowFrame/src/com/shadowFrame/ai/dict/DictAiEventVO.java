package com.shadowFrame.ai.dict;

public class DictAiEventVO {

	protected int id;

	protected int eventId;

	protected String param;

	protected int targetCampType;

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public int getEventId() {
		return this.eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
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

	@Override
	public String toString() {
		return "DictAiEventVO[id=" + id + ",eventId=" + eventId + ",param=" + param + ",targetCampType=" + targetCampType + ",]";
	}
	
	public boolean checkData() {
		return false;
	}

	public void afterInit() {
	}
}