package com.shadowFrame.robot;

import com.shadowFrame.io.net.INetHandler;
import com.shadowFrame.robot.action.IClientRobotAction;

/**
 * 测试机器人
 *
 * @author shadow
 */
@SuppressWarnings("rawtypes")
public class ClientRobot implements IClinetRobot {

    //机器人id
    private int id;
    //机器人行为接口
    private IClientRobotAction action;
    //机器人协议接收器
    private INetHandler handler;

    //协议发送时间戳
    private long sendTimeStamp;
    //上一次机器人行为时间戳
    private long lastActionTimeStamp;
    //机器人行为时间间隔
    private long actionInterval;

    /**
     * @param id      机器人Id
     * @param action  机器人行为
     * @param handler 消息处理器
     */
    public ClientRobot(final int id, final IClientRobotAction action, final INetHandler handler) {
        this.id = id;
        this.action = action;
        this.handler = handler;
    }

    public void connect(String ip, int port) {
        handler.connect(ip, port);
    }

    @SuppressWarnings("unchecked")
    public void send(Object message) {
        sendTimeStamp = System.currentTimeMillis();
        handler.send(message);
    }

    @Override
    public IClientRobotAction getAction() {
        lastActionTimeStamp = System.currentTimeMillis();
        return action;
    }

    @Override
    public INetHandler<?> getReceiveHandler() {
        return handler;
    }

    @Override
    public boolean isReady() {
        if (!handler.isActive()) {
            return false;
        }
        long currentTime = System.currentTimeMillis();
        if (currentTime - lastActionTimeStamp < actionInterval) {
            return false;
        }
        return true;
    }

    /**
     * @return 机器人id
     */
    @Override
    public int getId() {
        return id;
    }

    /**
     * @return 协议发送时间戳
     */
    public long getSendTimeStamp() {
        return sendTimeStamp;
    }

    /**
     * @return 收到协议时间戳
     */
    public long getReceiveTimeStamp() {
        return handler.getReceiveTimeStamp();
    }

    /**
     * @return 发送协议时间间隔
     */
    public long getMessageInterval() {
        return actionInterval;
    }

    /**
     * @return 机器人行为时间间隔
     */
    public long getActionInterval() {
        return actionInterval;
    }

    /**
     * @return 上一次机器人行为时间戳
     */
    public long getLastActionTimeStamp() {
        return lastActionTimeStamp;
    }

}
