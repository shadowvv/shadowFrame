package com.shadowFrame.ai.dict;

public class DictAiThresholdVO {

	protected int id;

	protected int thresholdId;

	protected float value;

	protected int targetCampType;

	protected int campareType;

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public int getThresholdId() {
		return this.thresholdId;
	}

	public void setThresholdId(int thresholdId) {
		this.thresholdId = thresholdId;
	}
	public float getValue() {
		return this.value;
	}

	public void setValue(float value) {
		this.value = value;
	}
	public int getTargetCampType() {
		return this.targetCampType;
	}

	public void setTargetCampType(int targetCampType) {
		this.targetCampType = targetCampType;
	}
	public int getCampareType() {
		return this.campareType;
	}

	public void setCampareType(int campareType) {
		this.campareType = campareType;
	}

	@Override
	public String toString() {
		return "DictAiThresholdVO[id=" + id + ",thresholdId=" + thresholdId + ",value=" + value + ",targetCampType=" + targetCampType + ",campareType=" + campareType + ",]";
	}
	

	public boolean checkData() {
		return false;
	}


	public void afterInit() {
	}
}