package com.shadowFrame.util;

import com.shadowFrame.log.ShadowLogger;

/**
 * 方法参数检测工具类
 * 
 * @author shadow
 * @version 1.0.0
 */
public class PreconditionUtil {

	private PreconditionUtil() {

	}

	/**
	 * 检测方法参数
	 * 
	 * @param expression
	 *            参数检测语句
	 * @param message
	 *            错误信息
	 */
	public static void checkArgument(boolean expression, String message) {
		if (!expression) {
			ShadowLogger.exceptionPrintln(message);
			throw new IllegalArgumentException(message);
		}
	}

	/**
	 * 检测参数状态
	 * 
	 * @param expression
	 *            参数状态检测语句
	 * @param message
	 *            错误信息
	 */
	public static void checkState(boolean expression, String message) {
		if (!expression) {
			ShadowLogger.logPrintln(message);
			throw new IllegalStateException(message);
		}
	}
}
