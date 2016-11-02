package com.shadowFrame.data.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import com.shadowFrame.data.template.base.IResourceLoader;
import com.shadowFrame.data.template.loader.CsvResourceLoader;
import com.shadowFrame.data.template.loader.ResourceLoader;

/**
 * csv资源标示
 * <p>
 * 文件首行为字段名,第二行开始为数据.空白字段为空
 * <p>
 * eg: <br>
 * segment1,segment2,segment3 <br>
 * 1,,3
 * <p>
 * 文件样式参考resource目录下csvSmaple.csv
 * 
 * @author Shadow
 * @version 1.0.0
 */
@Documented
@Target(ElementType.TYPE)
@Retention(RetentionPolicy.RUNTIME)
public @interface CsvResource {

	/**
	 * 资源名，包括路径
	 * 
	 * @return
	 */
	String fileName();

	/**
	 * 资源加载器，默认为{@link CsvResourceLoader}.
	 * <P>
	 * 如果想修改加载器，并且使用{@link ResourceLoader}加载资源<br>
	 * 加载器必须实现{@link IResourceLoader}接口，并重新注册加载器{@link ResourceLoader#registerLoader(CsvResource.Class(),
	 * IResourceLoader)}
	 * 
	 * @return
	 */
	Class<? extends IResourceLoader> loader() default CsvResourceLoader.class;
}
