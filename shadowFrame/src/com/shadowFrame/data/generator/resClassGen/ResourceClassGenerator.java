package com.shadowFrame.data.generator.resClassGen;

import java.io.File;

import com.shadowFrame.data.template.base.ResourceFmt;
import com.shadowFrame.log.ShadowLogger;

/**
 * 资源映射类生成器
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ResourceClassGenerator {

	private ResourceClassGenerator() {

	}

	/**
	 * 根据配置生成资源映射类
	 * 
	 * @param resourceDir
	 *            源资源目录
	 * @param targetDir
	 *            资源类导出目录
	 * @param fromFmt
	 *            源资源类型
	 * @param toFmt
	 *            导出资源类型
	 * @param resourcePackage
	 *            资源类包名
	 */
	public static void generateClass(String resourceDir, String targetDir, ResourceFmt fromFmt, ResourceFmt toFmt,
			String resourcePackage) {
		String resourceDirT = resourceDir;
		if (!resourceDir.endsWith("\\") || !resourceDir.endsWith("/")) {
			resourceDirT += File.separatorChar;
		}
		String targetDirT = targetDir;
		if (!targetDir.endsWith("\\") || !targetDir.endsWith("/")) {
			resourceDirT += File.separatorChar;
		}
		if (fromFmt.equals(ResourceFmt.EXCEL_RES)) {
			ExcelToClassGenerator.generateFromExcel(resourceDirT, resourcePackage, targetDirT, toFmt);
		} else {
			ShadowLogger.errorPrintln("generator class format:" + fromFmt + " is not supported");
		}
	}

}
