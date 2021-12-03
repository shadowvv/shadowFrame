package com.shadowFrame.robot.action;

/**
 * 机器人打招呼
 *
 * @author shadow
 */
public class RobotHelloAction extends AbstractRobotCommonAction {

    public RobotHelloAction() {

    }

    @Override
    public boolean prepareAction() {
        return true;
    }

    @Override
    public void afterAction() {

    }

    @Override
    public IClientRobotAction getNextAction() {
        return null;
    }

    @Override
    protected RobotActionResult doAction() {
        getOwner().send("hello server:" + getOwner().getId());
        return RobotActionResult.SUCCESS;
    }

}
