package com.test.robot;

import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import com.shadowFrame.data.template.loader.ResourceLoader;
/**
 * 机器人平台
 * @author shadowvx
 *
 */
public class RobotPlatform {
	
	/** 机器人任务执行器*/
	private ExecutorService executor;
	/* 机器人配置**/
	private RobotConfig robotConfig;
	
	private RobotPlatform() {
		
	}
	
	public void run() {
		robotConfig = ResourceLoader.loadTemplate(RobotConfig.class).get(RobotConfig.class.getName());
		executor = Executors.newFixedThreadPool(robotConfig.getPlatformThreadNum());
		List<IClinetRobot> robotList = RobotFactory.createRobots(robotConfig);
		for (IClinetRobot iClinetRobot : robotList) {
			iClinetRobot.connect(robotConfig.getServerIp(), robotConfig.getServerPort());
			try {
				Thread.sleep(robotConfig.getRobotBootInterval());
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
		while (true) {
			for (IClinetRobot iClinetRobot : robotList) {
				if(iClinetRobot.isReady()) {
					executor.submit(iClinetRobot.getAction());
				}
			}
			try {
				Thread.sleep(robotConfig.getPlatformInterval());
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
		}
	}
	
	public static void main(String[] args) {
		new RobotPlatform().run();
	}

}
