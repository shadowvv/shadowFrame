package com.shadowFrame.robot;

import com.shadowFrame.io.net.INetHandler;
import com.shadowFrame.robot.action.IClientRobotAction;

/**
 * 机器人接口
 * @author shadow
 *
 */
public interface IClinetRobot {
	
	/**
	 * 连接服务器
	 * @param ip
	 * @param port
	 */
	public void connect(String ip,int port);
	
	/**
	 * 发送协议
	 * @param message
	 */
	public void send(Object message);
	
	/**
	 * 
	 * @return 机器人接收协议
	 */
	public INetHandler<?> getReceiveHandler();
	
	/**
	 * 
	 * @return 是否准备好
	 */
	public boolean isReady();

	/**
	 * 
	 * @return 获得机器人行为
	 */
	public IClientRobotAction getAction();

	/**
	 * 
	 * @return 获得机器人Id
	 */
	public int getId();
}
