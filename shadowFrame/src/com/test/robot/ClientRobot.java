package com.test.robot;

import com.shadowFrame.io.net.IClientNet;

/**
 *  测试机器人
 * @author shadowvv
 *
 */
public class ClientRobot implements IClinetRobot {
	
	//机器人id
	private int id;
	//机器人网络接口
	private IClientNet net;
	//协议发送时间戳
	private long sendTimeStamp;
	//收到协议时间戳
	private long receiveTimeStamp;
	//机器人行为接口
	private IClientRobotAction action;
	//上一次机器人行为时间戳
	private long lastActionTimeStamp;
	//机器人行为时间间隔
	private long actionInterval;
	
	/**
	 * 
	 * @param id 机器人id
	 * @param net 机器人网络接口
	 * @param action 机器人行为接口
	 */
	public ClientRobot(int id,final IClientNet net,final IClientRobotAction action) {
		this.id = id;
		this.net = net;
		this.action = action;
	}
	
	public void connect(String ip,int port) {
		//net.connect(ip,port);
		System.out.println("id:"+id+" connect!");
	}
	
	public void send(Object message) {
		sendTimeStamp = System.currentTimeMillis();
		//net.send(message);
	}
	
	public void receive(Object message) {
		net.receive(message);
		receiveTimeStamp = System.currentTimeMillis();
	}
	
	@Override
	public IClientRobotAction getAction() {
		lastActionTimeStamp = System.currentTimeMillis();
		return action;
	}
	
	@Override
	public boolean isReady() {
//		if(!net.isActive()) {
//			return false;
//		}
		long currentTime = System.currentTimeMillis();
		if(currentTime - lastActionTimeStamp < actionInterval) {
			return false;
		}
		return true;
	}

	/**
	 * 
	 * @return 机器人id
	 */
	public int getId() {
		return id;
	}
	
	/**
	 * 
	 * @return 协议发送时间戳
	 */
	public long getSendTimeStamp() {
		return sendTimeStamp;
	}
	
	/**
	 * 
	 * @return 收到协议时间戳
	 */
	public long getReceiveTimeStamp() {
		return receiveTimeStamp;
	}
	
	/**
	 * 
	 * @return 发送协议时间间隔
	 */
	public long getMessageInterval() {
		return actionInterval;
	}
	
	/**
	 * 
	 * @return 机器人行为时间间隔
	 */
	public long getActionInterval() {
		return actionInterval;
	}
	
	/**
	 * 
	 * @return 上一次机器人行为时间戳
	 */
	public long getLastActionTimeStamp() {
		return lastActionTimeStamp;
	}
}
