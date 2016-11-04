package com.shadowFrame.data.generator.ResFmtConverter;

import java.io.File;
import java.io.FileFilter;
import java.util.List;
import java.util.Map;

import com.shadowFrame.data.template.loader.ExcelResourceLoader;
import com.shadowFrame.data.template.writer.CsvResourceWriter;
import com.shadowFrame.data.template.writer.ExcelResourceWriter;
import com.shadowFrame.util.FileUtil;

/**
 * 资源格式转换器
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ResourceFormatConverter {

	private ResourceFormatConverter() {

	}

	/**
	 * 导出资源
	 * 
	 * @param resourceDir
	 *            资源目录
	 * @param targetDir
	 *            导出F目录
	 * @param fromFmt
	 *            资源源格式
	 * @param toFmt
	 *            导出格式
	 */
	public static void generateResource(String resourceDir, String targetDir, String fromFmt, String toFmt) {
		if (resourceDir == null) {
			return;
		}
		if (targetDir == null) {
			return;
		}
		if (fromFmt.equals(toFmt)) {
			return;
		}
		String resourceDirT = resourceDir;
		if (!resourceDir.endsWith("\\") || !resourceDir.endsWith("/")) {
			resourceDirT += File.separatorChar;
		}
		String targetDirT = targetDir;
		if (!targetDir.endsWith("\\") || !targetDir.endsWith("/")) {
			resourceDirT += File.separatorChar;
		}
		File dir = new File(resourceDirT);
		if (dir == null || !dir.isDirectory()) {
			return;
		}

		File[] files = dir.listFiles(new FileFilter() {

			@Override
			public boolean accept(File file) {
				if (file.isFile() && (file.getName().endsWith("." + fromFmt))) {
					return true;
				}
				return false;
			}
		});
		for (File file : files) {
			List<Map<String, String>> datas = null;
			if (FileUtil.isExcelFile(fromFmt)) {
				datas = new ExcelResourceLoader().loadResource(file.getPath());
			} else {

			}

			if (FileUtil.isExcelFile(toFmt)) {
				new ExcelResourceWriter().writeResource(file.getName().substring(0, file.getName().indexOf(".")),
						targetDirT, datas);
			} else if ("csv".equals(toFmt)) {
				new CsvResourceWriter().writeResource(file.getName().substring(0, file.getName().indexOf(".")),
						targetDirT, datas);
			}
		}

	}
}
