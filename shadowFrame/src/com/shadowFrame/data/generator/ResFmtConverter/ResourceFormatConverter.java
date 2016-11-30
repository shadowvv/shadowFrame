package com.shadowFrame.data.generator.ResFmtConverter;

import java.io.File;
import java.io.FileFilter;
import java.util.List;
import java.util.Map;

import com.shadowFrame.data.template.base.ResourceFmt;
import com.shadowFrame.log.ShadowLogger;

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
	public static void generateResource(String resourceDir, String targetDir, ResourceFmt fromFmt, ResourceFmt toFmt) {
		if (fromFmt.equals(toFmt)) {
			ShadowLogger.logPrintln("resoruce from format is same with to format:" + fromFmt);
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
			ShadowLogger.errorPrintln(resourceDir + " is not directory");
			return;
		}

		File[] files = dir.listFiles(new FileFilter() {

			@Override
			public boolean accept(File file) {
				if (file.isFile() && (file.getName().contains("." + getResourceFmt(fromFmt)))) {
					return true;
				}
				return false;
			}
		});
		for (File file : files) {
			List<Map<String, String>> datas = fromFmt.getLoader().loadResource(file.getPath());
			toFmt.getWriter().writeResource(file.getName().substring(0, file.getName().indexOf(".")), targetDirT,
					datas);
		}

	}
	
	private static String getResourceFmt(ResourceFmt toFmt) {
		String fmt = null;
		switch (toFmt) {
		case EXCEL_RES:
			fmt = "xls";
			break;
		case CSV_RES:
			fmt = "csv";
			break;
		case PROPERTIES_RES:
			fmt = "cfg";
			break;
		case XML_RES:
			fmt = "xml";
			break;
		case JSON_RES:
			fmt = "json";
			break;
		default:
			break;
		}
		return fmt;
	}
}
