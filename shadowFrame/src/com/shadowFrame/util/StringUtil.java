package com.shadowFrame.util;

/**
 * 字符串操作工具类
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class StringUtil {

	/**
	 * 使字符串第一个字符大写
	 * 
	 * @param str
	 *            字符串
	 * @return
	 */
	public static String upperHeadCase(String str) {
		if (str == null || str.equals("")) {
			return null;
		}
		if (str.charAt(0) <= 'Z') {
			return str;
		}
		return (str.charAt(0) + "").toUpperCase() + str.substring(1);
	}

	public static void main(String[] args) {
		System.out.println(upperHeadCase("Test"));
	}
}
