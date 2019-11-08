package com.shadowFrame.util;

import org.springframework.util.StringUtils;

import com.google.common.base.Strings;

/**
 * 字符串操作工具类
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class StringUtil {

	private StringUtil() {

	}

	/**
	 * 返回对应{@code str}首字母大写的字符串。原字符串
	 * 
	 * @param str
	 *            字符串
	 * @return
	 */
	public static String upperHeadChar(String str) {
		PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(str), "argument string is null or empty");

		char headChar = str.charAt(0);
		if (headChar >= 'a' && headChar <= 'z') {
			headChar = (char) (headChar - ('a' - 'A'));
			return headChar + str.substring(1);
		} else {
			return str;
		}
	}

	public static boolean isNullOrEmpty(String str) {
		return (str == null || "".equals(str));
	}

}
