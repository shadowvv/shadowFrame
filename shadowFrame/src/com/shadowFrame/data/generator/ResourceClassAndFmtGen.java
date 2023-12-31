package com.shadowFrame.data.generator;

import com.shadowFrame.data.generator.ResFmtConverter.ResourceFormatConverter;
import com.shadowFrame.data.generator.resClassGen.ResourceClassGenerator;
import com.shadowFrame.data.template.loader.ResourceLoader;

/**
 * 资源转换和资源类导出功能类
 * <p>
 * 配置文件{@link GeneratorCfg}
 *
 * @author Shadow
 * @version 1.0.0
 */
public class ResourceClassAndFmtGen {

    private ResourceClassAndFmtGen() {

    }

    public static void generate() {
        GeneratorCfg cfg = ResourceLoader.loadTemplate(GeneratorCfg.class).get(GeneratorCfg.class.getName());
        if (cfg.isGeneratorClass()) {
            ResourceClassGenerator.generateClass(cfg.getResourceDir(), cfg.getTargetDir(), cfg.getFromFmt(),
                    cfg.getToFmt(), cfg.getResourceClassPackage());
        }
        if (cfg.isGeneratorResource()) {
            ResourceFormatConverter.generateResource(cfg.getResourceDir(), cfg.getTargetDir(), cfg.getFromFmt(),
                    cfg.getToFmt());
        }
    }

    public static void main(String[] args) {
        ResourceClassAndFmtGen.generate();
    }

}
