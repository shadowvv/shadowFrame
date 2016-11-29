package com.shadowFrame.data.generator;

import com.shadowFrame.data.generator.ResFmtConverter.ResourceFormatConverter;
import com.shadowFrame.data.generator.resClassGen.ResourceClassGenerator;
import com.shadowFrame.data.template.base.ResourceFmt;
import com.shadowFrame.data.template.loader.ResourceLoader;

/**
 * 资源转换和资源类导出功能类
 * <P>
 * 配置文件{@link GeneratorCfg}
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ResourceClassAndFmtGen {

	private ResourceClassAndFmtGen() {

	}

	public static void generate() {
		GeneratorCfg cfg = new ResourceLoader(ResourceFmt.PROPERTIES_RES).loadResources(GeneratorCfg.class)
				.get(GeneratorCfg.class.getName());
		if (cfg.isGeneratorClass()) {
			ResourceClassGenerator.generateClass(cfg.getResourceDir(), cfg.getTargetDir(), cfg.getFromFormat(),
					cfg.getToFormat(), cfg.getResourceClassPackage());
		}
		if (cfg.isGeneratorResource()) {
			ResourceFormatConverter.generateResource(cfg.getResourceDir(), cfg.getTargetDir(), cfg.getFromFormat(),
					cfg.getToFormat());
		}
	}

}
