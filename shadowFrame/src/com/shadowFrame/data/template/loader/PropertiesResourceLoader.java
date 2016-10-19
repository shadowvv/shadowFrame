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
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class PropertiesResourceLoader implements IResourceLoader {

	public <T> Map<String, T> loadResource(T resource) {
		PropertiesResource resAnnotation = resource.getClass().getAnnotation(PropertiesResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != PropertiesResourceLoader.class) {
			return null;
		}
		return loadResource(resource, resAnnotation.fileName());
	}

	public <T> Map<String, T> loadResource(T resource, String fileName) {
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
			return null;
		}
		try {
			ResourceBundle bundle = new PropertyResourceBundle(
					new InputStreamReader(new BufferedInputStream(new FileInputStream(file)), "UTF-8"));
			if (bundle != null) {
				Enumeration<String> keys = bundle.getKeys();
				while (keys.hasMoreElements()) {
					String key = (String) keys.nextElement().trim();
					ResourceLoader.setAttr(resource, key, bundle.getString(key).trim());
				}
			}

		} catch (IOException e) {
			e.printStackTrace();
		}
		Map<String, T> map = new HashMap<>();
		map.put(resource.getClass().getName(), resource);
		return map;
	}

}
