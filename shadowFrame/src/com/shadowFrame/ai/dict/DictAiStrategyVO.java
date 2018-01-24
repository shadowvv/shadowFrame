package com.shadowFrame.ai.dict;



public class DictAiStrategyVO {

	protected int id;
	
	protected int strartegyId;
	
	protected String param;
	
	protected String enterCondition;
	
	protected String tendencys;
	
	protected String overCondition;

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
	public String getParam() {
		return this.param;
	}

	public void setParam(String param) {
		this.param = param;
	}
	public String getEnterCondition() {
		return this.enterCondition;
	}

	public void setEnterCondition(String enterCondition) {
		this.enterCondition = enterCondition;
	}
	public String getTendencys() {
		return this.tendencys;
	}

	public void setTendencys(String tendencys) {
		this.tendencys = tendencys;
	}
	public String getOverCondition() {
		return this.overCondition;
	}

	public void setOverCondition(String overCondition) {
		this.overCondition = overCondition;
	}

	@Override
	public String toString() {
		return "DictAiStrategyVO[id=" + id + ",strartegyId=" + strartegyId + ",param=" + param + ",enterCondition=" + enterCondition + ",tendencys=" + tendencys + ",overCondition=" + overCondition + ",]";
	}
	
	public boolean checkData() {
		return false;
	}

	public void afterInit() {
	}
}