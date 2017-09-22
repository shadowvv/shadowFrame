package com.shadowFrame.ai.dict;



/**
 * 策略配置
 * @author shadow
 */
public class DictAiStrategyVO  {

	protected int id;
	
	protected int strartegyId;

	protected String enterThresholds;

	protected String enterEvents;

	protected String tendencys;

	protected String overThresholds;

	protected String overEvents;

	public int getId() {
		return this.id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public int getStrartegyId() {
		return this.strartegyId;
	}

	public void setStrartegyId(int strartegyId) {
		this.strartegyId = strartegyId;
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
	public String getTendencys() {
		return this.tendencys;
	}

	public void setTendencys(String tendencys) {
		this.tendencys = tendencys;
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

	@Override
	public String toString() {
		return "DictAiStrategyVO[id=" + id + ",strartegyId=" + strartegyId + ",enterThresholds=" + enterThresholds + ",enterEvents=" + enterEvents + ",tendencys=" + tendencys + ",overThresholds=" + overThresholds + ",overEvents=" + overEvents + ",]";
	}

}