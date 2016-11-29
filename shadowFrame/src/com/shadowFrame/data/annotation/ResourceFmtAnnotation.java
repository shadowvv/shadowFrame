package com.shadowFrame.data.annotation;

import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import com.shadowFrame.data.template.base.ResourceFmt;

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
public @interface ResourceFmtAnnotation {

	/**
	 * 资源名，包括路径
	 * 
	 * @return
	 */
	String fileName();

	/**
	 * 资源类型
	 * 
	 * @return
	 */
	ResourceFmt format();
}
