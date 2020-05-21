package com.shadowFrame.robot;

import java.util.ArrayList;
import java.util.List;

import com.shadowFrame.io.net.INetHandler;
import com.shadowFrame.io.net.coder.StringMessageCoder;
import com.shadowFrame.robot.action.IClientRobotAction;
import com.shadowFrame.robot.action.RobotHelloAction;
import com.shadowFrame.robot.handler.ClientNettyHandler;

/**
 * 机器人工厂
 * 
 * @author shadow
 *
 */
public class RobotFactory {

	/**
	 * 创建机器人
	 * 
	 * @param robotConfig 机器人配置
	 * @return
	 */
	public static List<IClinetRobot> createRobots(RobotConfig robotConfig) {
		List<IClinetRobot> robots = new ArrayList<IClinetRobot>();
		int num = robotConfig.getRobotNum();
		for (int i = 0; i < num; i++) {
			IClientRobotAction action = new RobotHelloAction();
			INetHandler<String> handler = new ClientNettyHandler(new StringMessageCoder());
			IClinetRobot robot = new ClientRobot(i, action, handler);
			robot.getAction().setRobot(robot);
			robots.add(robot);
		}
		return robots;
	}

}
