package com.shadowFrame;

import com.shadowFrame.data.annotation.ResourceFmtAnnotation;
import com.shadowFrame.data.template.base.ResourceFmt;

/**
 * 服务器基础配置
 * 
 * @author Shadow
 * @version 1.0.0
 */
@ResourceFmtAnnotation(fileName = "cfg/shadow.cfg", format = ResourceFmt.PROPERTIES_RES)
public class ShadowCfg {

	private String version;
	private String logDir;

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
	 * 服务器基础配置信息
	 */
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder("server config:\n");
		builder.append("version:" + getVersion() + "\n");
		builder.append("logDir:" + getLogDir() + "\n");
		return builder.toString();
	}
}
