package com.shadowFrame.robot.action;

import com.shadowFrame.robot.IClinetRobot;

/**
 * 机器人一般行为基类
 *
 * @author shadow
 */
public abstract class AbstractRobotCommonAction implements IClientRobotAction {

    //行为所属机器人
    private IClinetRobot robot;

    @Override
    public RobotActionResult call() throws Exception {
        RobotActionResult result = RobotActionResult.SUCCESS;
        if (prepareAction()) {
            result = doAction();
            afterAction();
        }
        return result;
    }

    @Override
    public IClinetRobot getOwner() {
        return robot;
    }

    @Override
    public void setRobot(IClinetRobot robot) {
        this.robot = robot;
    }

    /**
     * 机器人行为
     */
    protected abstract RobotActionResult doAction();
}
