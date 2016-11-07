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

	private static ShadowLogger instance;

	private ShadowLogger() {
		PropertyConfigurator.configure("cfg/log4j.properties");
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
		getInstance().LOGGER.debug(log, params);
	}

	/**
	 * 一般日志
	 * 
	 * @param log
	 * @param params
	 */
	public static void logPrintln(String log, Object... params) {
		getInstance().LOGGER.info(log, params);
	}

	/**
	 * 错误日志
	 * 
	 * @param log
	 * @param params
	 */
	public static void errorPrintln(String log, Object... params) {
		getInstance().LOGGER.error(log, params);
	}

	/**
	 * 性能日志
	 * 
	 * @param log
	 * @param params
	 */
	public static void performancePrintln(String log, Object... params) {
		getInstance().performanceLOGGER.info(log, params);
	}

	/**
	 * 异常日志
	 * 
	 * @param log
	 * @param params
	 */
	public static void exceptionPrintln(String log, Object... params) {
		getInstance().exceptionLOGGER.info(log, params);
	}

	public static void main(String[] args) {
		logPrintln("test");
		exceptionPrintln("exception");
		performancePrintln("performance");
	}
}
