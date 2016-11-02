package com.shadowFrame.data.generator.ResFmtConverter;

import com.shadowFrame.data.generator.GeneratorCfg;
import com.shadowFrame.data.template.loader.ResourceLoader;
import com.shadowFrame.util.FileUtil;

/**
 * 资源格式转换器
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ResourceFormatConverter {

	private GeneratorCfg cfg;

	public ResourceFormatConverter() {
		cfg = ResourceLoader.getInstance().loadTemplate(GeneratorCfg.class).get(GeneratorCfg.class.getName());
	}

	/**
	 * 导出资源
	 */
	public void generateResource() {
		if (FileUtil.isExcelFile(cfg.getFromFormat())) {

		} else {

		}
	}
}
