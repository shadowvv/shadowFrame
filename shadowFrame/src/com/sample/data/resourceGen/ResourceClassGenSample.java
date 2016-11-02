package com.sample.data.resourceGen;

import com.shadowFrame.data.generator.GeneratorCfg;
import com.shadowFrame.data.generator.resClassGen.ResourceClassGenerator;
import com.shadowFrame.data.template.loader.ResourceLoader;


/**
 * 资源映射类生成例子
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ResourceClassGenSample {

	private ResourceClassGenSample() {

	}

	public static void main(String[] args) {
		GeneratorCfg cfg = ResourceLoader.getInstance().loadTemplate(GeneratorCfg.class).get(GeneratorCfg.class.getName());
		ResourceClassGenerator.generateClass(cfg.getResourceDir(), cfg.getTargetDir(), cfg.getFromFormat(), cfg.getToFormat(), cfg.getResourceClassPackage());
	}

}
