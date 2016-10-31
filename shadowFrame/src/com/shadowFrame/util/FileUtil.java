package com.shadowFrame.util;

import java.io.File;

/**
 * 文件操作工具类
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class FileUtil {

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

}
