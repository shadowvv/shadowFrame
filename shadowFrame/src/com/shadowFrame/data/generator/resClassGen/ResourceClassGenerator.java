package com.shadowFrame.data.generator.resClassGen;

import com.shadowFrame.data.generator.GeneratorCfg;
import com.shadowFrame.data.template.loader.ResourceLoader;
import com.shadowFrame.util.FileUtil;

/**
 * 资源映射类生成器
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ResourceClassGenerator {

	private GeneratorCfg cfg;

	public ResourceClassGenerator() {
		cfg = ResourceLoader.getInstance().loadTemplate(GeneratorCfg.class).get(GeneratorCfg.class.getName());
	}

	/**
	 * 根据配置生成资源映射类
	 */
	public void generateClass() {
		if (FileUtil.isExcelFile(cfg.getFromFormat())) {
			ExcelClassGenerator.generateFromExcel(cfg.getResourceDir(), cfg.getResourceClassPackage(),
					cfg.getTargetDir(), cfg.getToFormat());
		} else {

		}
	}

}
