package com.shadowFrame.robot;

import com.shadowFrame.data.template.loader.ResourceLoader;

import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * 机器人平台
 *
 * @author shadow
 */
public class RobotPlatform {

    /**
     * 机器人任务执行器
     */
    private ExecutorService executor;
    /**
     * 协议接受器
     */
    private ExecutorService receiveExecutor;
    /* 机器人配置**/
    private RobotConfig robotConfig;

    private RobotPlatform() {

    }

    public void run() {
        robotConfig = ResourceLoader.loadTemplate(RobotConfig.class).get(RobotConfig.class.getName());
        receiveExecutor = Executors.newFixedThreadPool(robotConfig.getPlatformReceiveThreadNum());
        executor = Executors.newFixedThreadPool(robotConfig.getPlatformActionThreadNum());

        List<IClinetRobot> robotList = RobotFactory.createRobots(robotConfig);
        for (IClinetRobot iClinetRobot : robotList) {
            iClinetRobot.connect(robotConfig.getServerIp(), robotConfig.getServerPort());
            try {
                Thread.sleep(robotConfig.getRobotBootInterval());
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }

        for (IClinetRobot iClinetRobot : robotList) {
            receiveExecutor.submit(iClinetRobot.getReceiveHandler());
            break;
        }

        while (true) {
            for (IClinetRobot iClinetRobot : robotList) {
                if (iClinetRobot.isReady()) {
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
