package com.test.robot;

import java.util.concurrent.Callable;

import com.test.robot.action.RobotActionResult;

/**
 * 机器人行为接口
 * @author shadow
 *
 */
public interface IClientRobotAction extends Callable<RobotActionResult> {

	/**
	 * 准备行为
	 * @return 是否已经准备好
	 */
	public boolean prepareAction();
	
	/**
	 * 行为结束
	 */
	public void afterAction();
	
	/**
	 * 获得下一个行为
	 * @return 下一个行为
	 */
	public IClientRobotAction getNextAction();
	
	/**
	 * 
	 * @return 行为拥有者
	 */
	public IClinetRobot getOwner();

}
