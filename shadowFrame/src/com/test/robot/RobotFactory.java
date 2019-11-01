package com.test.robot;

import java.util.ArrayList;
import java.util.List;

import com.test.robot.action.RobotActionResult;

/**
 * 机器人工厂
 * @author shadowvx
 *
 */
public class RobotFactory {

	/**
	 * 创建机器人
	 * @param robotConfig 机器人配置
	 * @return
	 */
	public static List<IClinetRobot> createRobots(RobotConfig robotConfig) {
		List<IClinetRobot> robots = new ArrayList<IClinetRobot>();
		int num = robotConfig.getRobotNum();
		for (int i = 0; i < num; i++) {
			IClinetRobot robot = new ClientRobot(i, null, new IClientRobotAction() {
				
				@Override
				public RobotActionResult call() throws Exception {
					System.out.println("do action!");
					return RobotActionResult.SUCCESS;
				}
				
				@Override
				public boolean prepareAction() {
					return false;
				}
				
				@Override
				public IClinetRobot getOwner() {
					return null;
				}
				
				@Override
				public IClientRobotAction getNextAction() {
					return null;
				}
				
				@Override
				public void afterAction() {
					
				}
			});
			robots.add(robot);
		}
		return robots;
	}

}
