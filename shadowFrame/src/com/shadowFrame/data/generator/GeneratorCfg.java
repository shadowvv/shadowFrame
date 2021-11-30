package com.shadowFrame.data.generator;

import com.shadowFrame.data.annotation.ResourceFmtAnnotation;
import com.shadowFrame.data.template.base.BaseTemplate;
import com.shadowFrame.data.template.base.ResourceFmt;

/**
 * 资源生成器配置映射类
 * 
 * @author Shadow
 * @version 1.0.0
 */
@ResourceFmtAnnotation(fileName = "./shadowFrame/cfg/generator.cfg", format = ResourceFmt.PROPERTIES_RES)
public class GeneratorCfg extends BaseTemplate {

	private boolean generatorClass;
	private boolean generatorResource;
	private String resourceDir;
	private String resourceClassPackage;
	private String fromFormat;
	private String toFormat;
	private String targetDir;

	private ResourceFmt fromFmt;
	private ResourceFmt toFmt;

	/**
	 * 资源目录
	 * 
	 * @return
	 */
	public String getResourceDir() {
		return resourceDir;
	}

	/**
	 * 资源映射类所在包
	 * 
	 * @return
	 */
	public String getResourceClassPackage() {
		return resourceClassPackage;
	}

	/**
	 * 资源类输出目录
	 * 
	 * @return
	 */
	public String getTargetDir() {
		return targetDir;
	}

	/**
	 * 是否生成资源映射类
	 * 
	 * @return
	 */
	public boolean isGeneratorClass() {
		return generatorClass;
	}

	/**
	 * 是否转换资源格式
	 * 
	 * @return
	 */
	public boolean isGeneratorResource() {
		return generatorResource;
	}

	/**
	 * 资源转换原始格式
	 * 
	 * @return
	 */
	public ResourceFmt getFromFmt() {
		return fromFmt;
	}

	/**
	 * 资源转换目标格式
	 * 
	 * @return
	 */
	public ResourceFmt getToFmt() {
		return toFmt;
	}

	@Override
	public boolean invalid() {
		fromFmt = ResourceFmt.valueOf(fromFormat);
		if (fromFmt == null) {
			return true;
		}
		toFmt = ResourceFmt.valueOf(toFormat);
		if (toFmt == null) {
			return true;
		}
		return false;
	}

	@Override
	public void assembly() {

	}
}
