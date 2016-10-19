package com.shadowFrame.data.template.base;

import java.util.Map;

import com.shadowFrame.data.annotation.CsvResource;
import com.shadowFrame.data.annotation.ResourceId;

/**
 * 资源加载器接口
 * 
 * @author Shadow
 * @version 1.0.0
 */
public interface IResourceLoader {
	/**
	 * 加载资源
	 * <P>
	 * 返回值:如果resource中有被{@link ResourceId}标记的字段，则key为该字段。如果没有key为resource类名,且只有一组数据<br>
	 * 
	 * @param resource
	 *            资源映射类
	 * @param fileName
	 *            资源名
	 * @return 资源map
	 */
	public abstract <T> Map<String, T> loadResource(T resource, String fileName);

	/**
	 * 加载资源，template必须由对呀的Annotation标记<br>
	 * eg:{@link CsvResource}
	 * <P>
	 * 返回值:如果resource中有被{@link ResourceId}标记的字段，则key为该字段。如果没有key为resource类名,且只有一组数据<br>
	 * 
	 * @param resource
	 *            资源映射类
	 * @return 资源map
	 */
	public abstract <T> Map<String, T> loadResource(T resource);
}
