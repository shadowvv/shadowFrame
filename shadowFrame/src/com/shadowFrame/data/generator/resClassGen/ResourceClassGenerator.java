package com.shadowFrame.data.generator.resClassGen;

import com.shadowFrame.util.FileUtil;

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
	 * @param resourceDir 源资源目录
	 * @param targetDir 资源类导出目录
	 * @param fromFmt 源资源类型
	 * @param toFmt 导出资源类型
	 * @param resourcePackage 资源类包名
	 */
	public static void generateClass(String resourceDir,String targetDir,String fromFmt,String toFmt,String resourcePackage) {
		if (FileUtil.isExcelFile(fromFmt)) {
			ExcelClassGenerator.generateFromExcel(resourceDir, resourcePackage,targetDir, toFmt);
		} else {

		}
	}

}
