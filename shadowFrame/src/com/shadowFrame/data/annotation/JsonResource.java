package com.shadowFrame.data.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import com.shadowFrame.data.template.base.IResourceLoader;
import com.shadowFrame.data.template.loader.JsonResourceLoader;
import com.shadowFrame.data.template.loader.ResourceLoader;

/**
 * json资源标示,json文件根节点必须为root
 * <p>
 * 文件样式 参考resource目录下jsonSmaple.json
 * 
 * @author Shadow
 * @version 1.0.0
 */
@Documented
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
public @interface JsonResource {

	/**
	 * 资源名，包括路径
	 * 
	 * @return
	 */
	String fileName();

	/**
	 * 资源加载器，默认为{@link JsonResourceLoader}.
	 * <P>
	 * 如果想修改加载器，并且使用{@link ResourceLoader}加载资源<br>
	 * 加载器必须实现{@link IResourceLoader}接口，并重新注册加载器{@link ResourceLoader#registerLoader(JsonResource.Class(),
	 * IResourceLoader)}
	 * 
	 * @return
	 */
	Class<?> loader() default JsonResourceLoader.class;
}
