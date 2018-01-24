package com.shadowFrame.ai.dict;



public class DictAiTendencyVO {

	protected int id;

	protected int tendencyId;

	protected String param;

	protected String enterCondition;

	protected int perAction;

	protected int mainAction1;

	protected int mainAction2;

	protected int mainAction3;

	protected int clearAction;

	protected String overCondition;

	protected int nextTendency;

	protected int priority;

	protected int weight;

	protected int doTimes;

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
	public int getPerAction() {
		return this.perAction;
	}

	public void setPerAction(int perAction) {
		this.perAction = perAction;
	}
	public int getMainAction1() {
		return this.mainAction1;
	}

	public void setMainAction1(int mainAction1) {
		this.mainAction1 = mainAction1;
	}
	public int getMainAction2() {
		return this.mainAction2;
	}

	public void setMainAction2(int mainAction2) {
		this.mainAction2 = mainAction2;
	}
	public int getMainAction3() {
		return this.mainAction3;
	}

	public void setMainAction3(int mainAction3) {
		this.mainAction3 = mainAction3;
	}
	public int getClearAction() {
		return this.clearAction;
	}

	public void setClearAction(int clearAction) {
		this.clearAction = clearAction;
	}
	public String getOverCondition() {
		return this.overCondition;
	}

	public void setOverCondition(String overCondition) {
		this.overCondition = overCondition;
	}
	public int getNextTendency() {
		return this.nextTendency;
	}

	public void setNextTendency(int nextTendency) {
		this.nextTendency = nextTendency;
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
	public int getDoTimes() {
		return this.doTimes;
	}

	public void setDoTimes(int doTimes) {
		this.doTimes = doTimes;
	}

	@Override
	public String toString() {
		return "DictAiTendencyVO[id=" + id + ",tendencyId=" + tendencyId + ",param=" + param + ",enterCondition=" + enterCondition + ",perAction=" + perAction + ",mainAction1=" + mainAction1 + ",mainAction2=" + mainAction2 + ",mainAction3=" + mainAction3 + ",clearAction=" + clearAction + ",overCondition=" + overCondition + ",nextTendency=" + nextTendency + ",priority=" + priority + ",weight=" + weight + ",doTimes=" + doTimes + ",]";
	}

	public boolean checkData() {
		return false;
	}

	public void afterInit() {
	}
}