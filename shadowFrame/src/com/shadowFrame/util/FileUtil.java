package com.shadowFrame.util;

import java.io.File;

/**
 * 文件操作工具类
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class FileUtil {

	private FileUtil() {

	}

	/**
	 * excel07 文件格式
	 */
	public static String EXCEL07 = "xlsx";
	/**
	 * excel03 文件格式
	 */
	public static String EXCEL03 = "xls";

	/**
	 * 获得存在的文件，不存在返回null
	 * 
	 * @param fileName
	 *            文件名
	 * @return
	 */
	public static File getExistFile(String fileName) {
		File file = new File(fileName);
		if (!file.isFile() || !file.exists()) {
			return null;
		}
		return file;
	}

	/**
	 * 
	 * @param fileFMT
	 *            文件格式
	 * @return 是否为excel文件
	 */
	public static boolean isExcelFile(String fileFMT) {
		if (EXCEL07.equals(fileFMT) || EXCEL03.equals(fileFMT)) {
			return true;
		}
		return false;
	}

}
