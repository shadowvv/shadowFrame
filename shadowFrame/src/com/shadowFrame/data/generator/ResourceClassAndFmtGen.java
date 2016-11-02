package com.shadowFrame.data.generator;

import com.shadowFrame.data.generator.resClassGen.ResourceClassGenerator;
import com.shadowFrame.data.template.loader.ResourceLoader;

public class ResourceClassAndFmtGen {

	private ResourceClassAndFmtGen() {

	}
	
	public static void main(String[] args) {
		GeneratorCfg cfg = ResourceLoader.getInstance().loadTemplate(GeneratorCfg.class).get(GeneratorCfg.class.getName());
		ResourceClassGenerator.generateClass(cfg.getResourceDir(), cfg.getTargetDir(), cfg.getFromFormat(), cfg.getToFormat(), cfg.getResourceClassPackage());
	}

}
