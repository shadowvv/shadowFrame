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

}
