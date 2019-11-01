package com.test.robot;

/**
 * 机器人接口
 * @author shadowvx
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
	 * 接收协议
	 * @param message
	 */
	public void receive(Object message);
	
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
}
