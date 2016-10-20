package com.shadowFrame.data.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import com.shadowFrame.data.template.base.IResourceLoader;
import com.shadowFrame.data.template.loader.PropertiesResourceLoader;
import com.shadowFrame.data.template.loader.ResourceLoader;

/**
 * 属性资源标示
 * <p>
 * 文件以#标识注释，以;结束语句
 * <p>
 * eg: <br>
 * # 注释 <br>
 * serverId = 1;
 * <p>
 * 文件样式 参考resource目录下propertiesSmaple.cfg
 * 
 * @author Shadow
 * @version 1.0.0
 */
@Documented
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
public @interface PropertiesResource {

	/**
	 * 资源名，包括路径
	 * 
	 * @return
	 */
	String fileName();

	/**
	 * 资源加载器，默认为{@link PropertiesResourceLoader}.
	 * <P>
	 * 如果想修改加载器，并且使用{@link ResourceLoader}加载资源<br>
	 * 加载器必须实现{@link IResourceLoader}接口，并重新注册加载器{@link ResourceLoader#registerLoader(PropertiesResource.Class(),
	 * IResourceLoader)}
	 * 
	 * @return
	 */
	Class<?> loader() default PropertiesResourceLoader.class;
}
