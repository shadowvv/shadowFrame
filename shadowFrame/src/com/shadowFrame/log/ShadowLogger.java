package com.shadowFrame.log;

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
	static Logger logger = LoggerFactory.getLogger("Shadow");

	/**
	 * 异常日志
	 */
	static Logger exceptionLogger = LoggerFactory.getLogger("Exception");

	/**
	 * 性能日志
	 */
	static Logger performanceLogger = LoggerFactory.getLogger("Performance");

	/**
	 * 调试日志
	 * 
	 * @param log
	 * @param params
	 */
	public static void debugPrintln(String log, Object... params) {
		logger.debug(log, params);
	}

	/**
	 * 一般日志
	 * 
	 * @param log
	 * @param params
	 */
	public static void logPrintln(String log, Object... params) {
		logger.info(log, params);
	}

	/**
	 * 错误日志
	 * 
	 * @param log
	 * @param params
	 */
	public static void errorPrintln(String log, Object... params) {
		logger.error(log, params);
	}

	/**
	 * 性能日志
	 * 
	 * @param log
	 * @param params
	 */
	public static void performancePrintln(String log, Object... params) {
		performanceLogger.info(log, params);
	}

	/**
	 * 异常日志
	 * 
	 * @param log
	 * @param params
	 */
	public static void exceptionPrintln(String log, Object... params) {
		exceptionLogger.info(log, params);
	}
}
