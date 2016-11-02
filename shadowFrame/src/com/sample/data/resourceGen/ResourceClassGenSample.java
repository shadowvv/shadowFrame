package com.sample.data.resourceGen;

import com.shadowFrame.data.generator.resClassGen.ResourceClassGenerator;

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
		new ResourceClassGenerator().generateClass();
	}

}
