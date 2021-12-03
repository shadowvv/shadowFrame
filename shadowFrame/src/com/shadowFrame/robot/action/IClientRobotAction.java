package com.shadowFrame.robot.action;

import com.shadowFrame.robot.IClinetRobot;

import java.util.concurrent.Callable;

/**
 * 机器人行为接口
 *
 * @author shadow
 */
public interface IClientRobotAction extends Callable<RobotActionResult> {

    /**
     * 准备行为
     *
     * @return 是否已经准备好
     */
    public boolean prepareAction();

    /**
     * 行为结束
     */
    public void afterAction();

    /**
     * 获得下一个行为
     *
     * @return 下一个行为
     */
    public IClientRobotAction getNextAction();

    /**
     * @return 行为拥有者
     */
    public IClinetRobot getOwner();

    /**
     * 设置行为机器人
     *
     * @param robot
     */
    public void setRobot(IClinetRobot robot);

}
