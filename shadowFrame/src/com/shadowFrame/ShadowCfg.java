package com.shadowFrame;

import com.shadowFrame.data.annotation.ResourceFmtAnnotation;
import com.shadowFrame.data.template.base.BaseTemplate;
import com.shadowFrame.data.template.base.ResourceFmt;

/**
 * 服务器基础配置
 * 
 * @author Shadow
 * @version 1.0.0
 */
@ResourceFmtAnnotation(fileName = "cfg/shadow.cfg", format = ResourceFmt.PROPERTIES_RES)
public class ShadowCfg extends BaseTemplate{

	private String version;
	private String logDir;
	private Boolean openLog;

	/**
	 * 
	 * @return 服务器版本
	 */
	public String getVersion() {
		return version;
	}

	/**
	 * 
	 * @return 日志输出目录
	 */
	public String getLogDir() {
		return logDir;
	}

	/**
	 * 
	 * @return 是否启动日志
	 */
	public Boolean getOpenLog() {
		return openLog;
	}
	
	@Override
	public boolean invalid() {
		return false;
	}

	@Override
	public void assembly() {
		
	}

	/**
	 * 服务器基础配置信息
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder("server config:\n");
		builder.append("version:" + getVersion() + "\n");
		builder.append("openLog:" + getOpenLog() + "\n");
		builder.append("logDir:" + getLogDir() + "\n");
		return builder.toString();
	}

}
