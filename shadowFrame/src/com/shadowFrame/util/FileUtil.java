package com.shadowFrame.util;

import java.io.File;

import com.google.common.base.Strings;

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
	 * 获得存在的文件
	 * 
	 * @param fileName
	 *            文件名
	 * @return
	 */
	public static File getExistFile(String fileName) {
		PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(fileName), "argument fileName is null or empty");

		File file = new File(fileName);
		PreconditionUtil.checkState(file.isFile() && file.exists(), "file:" + fileName + " is not exist");

		return file;
	}

	/**
	 * 
	 * @param fileFMT
	 *            文件格式
	 * @return 是否为excel文件
	 */
	public static boolean isExcelFile(String fileFMT) {
		PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(fileFMT), "argument fileFmt is null or empty");

		if (EXCEL07.equals(fileFMT) || EXCEL03.equals(fileFMT)) {
			return true;
		}
		return false;
	}

}
