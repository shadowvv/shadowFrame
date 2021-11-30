package com.shadowFrame.log;

import org.apache.log4j.PropertyConfigurator;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 日志类
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ShadowLogger {

	/**
	 * 一般日志
	 */
	final Logger LOGGER = LoggerFactory.getLogger("Shadow");

	/**
	 * 异常日志
	 */
	final Logger exceptionLOGGER = LoggerFactory.getLogger("Exception");

	/**
	 * 性能日志
	 */
	final Logger performanceLOGGER = LoggerFactory.getLogger("Performance");

	/**
	 * 是否日志
	 */
	private static boolean USE_LOG = true;
	
	private static ShadowLogger instance;

	private ShadowLogger() {
		PropertyConfigurator.configure("./shadowFrame/cfg/log4j.properties");
	}

	public static ShadowLogger getInstance() {
		if (instance == null) {
			instance = new ShadowLogger();
		}
		return instance;
	}

	/**
	 * 调试日志
	 * 
	 * @param log
	 * @param params
	 */
	public static void debugPrintln(String log, Object... params) {
		if(USE_LOG){
			getInstance().LOGGER.debug(log, params);
		}
	}

	/**
	 * 一般日志
	 * 
	 * @param log
	 * @param params
	 */
	public static void logPrintln(String log, Object... params) {
		if(USE_LOG){
			getInstance().LOGGER.info(log, params);			
		}
	}

	/**
	 * 错误日志
	 * 
	 * @param log
	 * @param params
	 */
	public static void errorPrintln(String log, Object... params) {
		if(USE_LOG){
			getInstance().LOGGER.error(log, params);			
		}
	}

	/**
	 * 性能日志
	 * 
	 * @param log
	 * @param params
	 */
	public static void performancePrintln(String log, Object... params) {
		if(USE_LOG){
			getInstance().performanceLOGGER.info(log, params);			
		}
	}

	/**
	 * 异常日志
	 * 
	 * @param log
	 * @param params
	 */
	public static void exceptionPrintln(String log, Object... params) {
		if(USE_LOG){
			getInstance().exceptionLOGGER.info(log, params);			
		}
	}

}
