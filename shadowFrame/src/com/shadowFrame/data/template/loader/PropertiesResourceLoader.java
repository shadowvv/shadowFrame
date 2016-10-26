package com.shadowFrame.data.template.loader;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.PropertyResourceBundle;
import java.util.ResourceBundle;

import com.shadowFrame.data.annotation.PropertiesResource;
import com.shadowFrame.data.template.base.IResourceLoader;
import com.shadowFrame.util.FileUtil;

/**
 * 属性资源加载器
 * <p>
 * 文件以#标识注释，以'\n'结束语句
 * <p>
 * eg: <br>
 * # 注释 <br>
 * serverId = 1
 * <p>
 * 文件样式 参考resource目录下propertiesSmaple.cfg
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class PropertiesResourceLoader implements IResourceLoader {

	public <T> Map<String, T> loadResources(Class<T> resource) {
		PropertiesResource resAnnotation = resource.getAnnotation(PropertiesResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != PropertiesResourceLoader.class) {
			return null;
		}
		return loadResourcesFromFile(resource, resAnnotation.fileName());
	}

	public <T> Map<String, T> loadResourcesFromFile(Class<T> resource, String fileName) {
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
			return null;
		}
		try {
			ResourceBundle bundle = new PropertyResourceBundle(
					new InputStreamReader(new BufferedInputStream(new FileInputStream(file)), "UTF-8"));
			if (bundle != null) {
				Enumeration<String> keys = bundle.getKeys();
				T resourceObject = resource.newInstance();
				while (keys.hasMoreElements()) {
					String key = (String) keys.nextElement().trim();
					ResourceLoader.setAttr(resourceObject, key, bundle.getString(key).trim());
				}
				Map<String, T> map = new HashMap<>();
				map.put(resource.getName(), resourceObject);
				return map;
			}
		} catch (IOException | InstantiationException | IllegalAccessException e) {
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 针对与属性资源该方法无效,返回null
	 */
	@Override
	@Deprecated
	public <T> Map<String, T> loadResourcesWithResourceId(Class<T> resource, String resourceId) {
		return null;
	}

	/**
	 * 针对与属性资源该方法无效,返回null
	 */
	@Override
	@Deprecated
	public <T> Map<String, T> loadResources(Class<T> resource, String fileName, String resourceId) {
		return null;
	}

	/**
	 * 针对与属性资源该方法无效,返回null
	 */
	@Override
	@Deprecated
	public <T> T loadResource(Class<T> resource, String resourceKey) {
		return null;
	}

	/**
	 * 针对与属性资源该方法无效,返回null
	 */
	@Override
	@Deprecated
	public <T> T loadResourceFromFile(Class<T> resource, String fileName, String resourceKey) {
		return null;
	}

	/**
	 * 针对与属性资源该方法无效,返回null
	 */
	@Override
	@Deprecated
	public <T> T loadResourceWithResourceId(Class<T> resource, String resourceId, String resourceIdValue) {
		return null;
	}

	/**
	 * 针对与属性资源该方法无效,返回null
	 */
	@Override
	@Deprecated
	public <T> T loadResource(Class<T> resource, String fileName, String resourceKeyName, String resourceKey) {
		return null;
	}

}
