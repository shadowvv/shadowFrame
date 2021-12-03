package com.shadowFrame.ai.dict;


public class DictAiActionVO {

    protected int id;

    protected int actionId;

    protected String param;

    protected int targetCampType;

    protected String overCondition;

    protected String interruptCondition;

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

    public String getOverCondition() {
        return this.overCondition;
    }

    public void setOverCondition(String overCondition) {
        this.overCondition = overCondition;
    }

    public String getInterruptCondition() {
        return this.interruptCondition;
    }

    public void setInterruptCondition(String interruptCondition) {
        this.interruptCondition = interruptCondition;
    }

    @Override
    public String toString() {
        return "DictAiActionVO[id=" + id + ",actionId=" + actionId + ",param=" + param + ",targetCampType=" + targetCampType + ",overCondition=" + overCondition + ",interruptCondition=" + interruptCondition + ",]";
    }

    public boolean checkData() {
        return false;
    }

    public void afterInit() {
    }
}