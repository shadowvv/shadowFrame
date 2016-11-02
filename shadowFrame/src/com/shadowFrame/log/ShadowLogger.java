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
	private static final Logger LOGGER = LoggerFactory.getLogger("Shadow");

	/**
	 * 异常日志
	 */
	private static final Logger exceptionLOGGER = LoggerFactory.getLogger("Exception");

	/**
	 * 性能日志
	 */
	private static final Logger performanceLOGGER = LoggerFactory.getLogger("Performance");

	private ShadowLogger() {

	}

	/**
	 * 调试日志
	 * 
	 * @param log
	 * @param params
	 */
	public static void debugPrintln(String log, Object... params) {
		LOGGER.debug(log, params);
	}

	/**
	 * 一般日志
	 * 
	 * @param log
	 * @param params
	 */
	public static void logPrintln(String log, Object... params) {
		LOGGER.info(log, params);
	}

	/**
	 * 错误日志
	 * 
	 * @param log
	 * @param params
	 */
	public static void errorPrintln(String log, Object... params) {
		LOGGER.error(log, params);
	}

	/**
	 * 性能日志
	 * 
	 * @param log
	 * @param params
	 */
	public static void performancePrintln(String log, Object... params) {
		performanceLOGGER.info(log, params);
	}

	/**
	 * 异常日志
	 * 
	 * @param log
	 * @param params
	 */
	public static void exceptionPrintln(String log, Object... params) {
		exceptionLOGGER.info(log, params);
	}
}
