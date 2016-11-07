package com.shadowFrame;

import com.shadowFrame.data.annotation.PropertiesResource;

@PropertiesResource(fileName = "cfg/shadow.cfg")
public class ShadowCfg {

	private String version;
	private String logDir;

	public String getVersion() {
		return version;
	}

	public String getLogDir() {
		return logDir;
	}
}
