package com.shadowFrame.robot;

import com.shadowFrame.data.annotation.ResourceFmtAnnotation;
import com.shadowFrame.data.template.base.BaseTemplate;
import com.shadowFrame.data.template.base.ResourceFmt;

/**
 * 机器人配置
 * @author shadow
 *
 */
@ResourceFmtAnnotation(fileName = "cfg/robotConfig.cfg", format = ResourceFmt.PROPERTIES_RES)
public class RobotConfig extends BaseTemplate {
	
	/** 机器人平台机器人行为线程数量*/
	private int platformActionThreadNum;
	/** 机器人平台机器人接受协议线程数量*/
	private int platformReceiveThreadNum;
	/** 机器人平台遍历机器人间隔（毫秒)*/
	private long platformInterval;
	/** 机器人数量*/
	private int robotNum;
	/** 机器人启动间隔（毫秒)*/
	private long robotBootInterval;
	/** 服务器ip*/
	private String serverIp;
	/** 服务器端口*/
	private int serverPort;
	
	public RobotConfig() {

	}
	
	public void setPlatformActionThreadNum(int platformActionThreadNum) {
		this.platformActionThreadNum = platformActionThreadNum;
	}
	
	public int getPlatformActionThreadNum() {
		return platformActionThreadNum;
	}
	
	public void setPlatformReceiveThreadNum(int platformReceiveThreadNum) {
		this.platformReceiveThreadNum = platformReceiveThreadNum;
	}
	
	public int getPlatformReceiveThreadNum() {
		return platformReceiveThreadNum;
	}
	
	public void setPlatformInterval(long platformInterval) {
		this.platformInterval = platformInterval;
	}
	
	public long getPlatformInterval() {
		return platformInterval;
	}
	
	public void setRobotNum(int robotNum) {
		this.robotNum = robotNum;
	}
	
	public int getRobotNum() {
		return robotNum;
	}
	
	public void setRobotBootInterval(long robotBootInterval) {
		this.robotBootInterval = robotBootInterval;
	}
	
	public long getRobotBootInterval() {
		return robotBootInterval;
	}
	
	public void setServerIp(String serverIp) {
		this.serverIp = serverIp;
	}
	
	public String getServerIp() {
		return serverIp;
	}
	
	public void setServerPort(int serverPort) {
		this.serverPort = serverPort;
	}
	
	public int getServerPort() {
		return serverPort;
	}
	
	@Override
	public String toString() {
		return super.toString();
	}

	@Override
	public boolean invalid() {
		return false;
	}

	@Override
	public void assembly() {
		
	}

}
