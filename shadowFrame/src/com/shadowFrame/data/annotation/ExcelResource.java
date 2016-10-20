package com.shadowFrame.data.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import com.shadowFrame.data.template.base.IResourceLoader;
import com.shadowFrame.data.template.loader.ExcelResourceLoader;
import com.shadowFrame.data.template.loader.ResourceLoader;

/**
 * excel资源标示
 * <p>
 * excel第一个标签页为数据。标签页中第一行为字段名，第二行为字段注释，第三行之后为数据
 * <p>
 * 文件样式参考resource目录下excelSmaple.xlsx
 * 
 * @author Shadow
 * @version 1.0.0
 */
@Documented
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
public @interface ExcelResource {
	
	/**
	 * 资源名，包括路径
	 * 
	 * @return
	 */
	String fileName();

	/**
	 * 资源加载器，默认为{@link ExcelResourceLoader}.
	 * <P>
	 * 如果想修改加载器，并且使用{@link ResourceLoader}加载资源<br>
	 * 加载器必须实现{@link IResourceLoader}接口，并重新注册加载器{@link ResourceLoader#registerLoader(ExcelResource.Class(),
	 * IResourceLoader)}
	 * 
	 * @return
	 */
	Class<?> loader() default ExcelResourceLoader.class;
}
