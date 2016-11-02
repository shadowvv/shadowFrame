package com.shadowFrame.data.template.loader;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;

import com.shadowFrame.data.annotation.JsonResource;
import com.shadowFrame.data.template.base.IResourceLoader;
import com.shadowFrame.util.ClassUtil;
import com.shadowFrame.util.FileUtil;

/**
 * Json格式资源加载器,json文件根节点必须为root
 * <p>
 * 文件样式 参考resource目录下jsonSmaple.json
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class JsonResourceLoader implements IResourceLoader {

	static String JSON_ROOT = "root";

	@Override
	public <T> Map<String, T> loadResources(Class<T> resource) {
		JsonResource resAnnotation = resource.getAnnotation(JsonResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != JsonResourceLoader.class) {
			return null;
		}
		return loadResourcesFromFile(resource, resAnnotation.fileName());
	}

	@Override
	public <T> Map<String, T> loadResourcesFromFile(Class<T> resource, String fileName) {
		return loadResources(resource, fileName, ResourceLoader.getIdFieldName(resource));
	}

	@Override
	public <T> Map<String, T> loadResourcesWithResourceId(Class<T> resource, String resourceId) {
		JsonResource resAnnotation = resource.getAnnotation(JsonResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != JsonResourceLoader.class) {
			return null;
		}
		return loadResources(resource, resAnnotation.fileName(), resourceId);
	}

	@Override
	public <T> Map<String, T> loadResources(Class<T> resource, String fileName, String resourceId) {
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
			return null;
		}
		if (resourceId == null) {
			return null;
		}
		if (!ClassUtil.isContainField(resource, resourceId)) {
			return null;
		}
		Map<String, T> resources = new HashMap<>();
		InputStream inputStream;
		try {
			inputStream = new FileInputStream(file);
			StringBuilder stringBuilder = new StringBuilder();
			int byteRead = 0;
			while ((byteRead = inputStream.read()) != -1) {
				stringBuilder.append((char) byteRead);
			}
			inputStream.close();
			String data = stringBuilder.toString();
			JSONObject jsonO = new JSONObject(data);
			JSONArray jsonA = jsonO.getJSONArray(JSON_ROOT);
			String resourceIdValue = null;
			for (int i = 0; i < jsonA.length(); i++) {
				JSONObject element = jsonA.getJSONObject(i);
				String[] key = JSONObject.getNames(element);
				T resourceObject = resource.newInstance();
				for (String attribute : key) {
					ResourceLoader.setAttr(resourceObject, attribute, element.getString(attribute));
					if (resourceId.equals(attribute)) {
						resourceIdValue = element.getString(attribute);
						if (resources.containsKey(resourceIdValue)) {
							return null;
						}
						resources.put(resourceIdValue, resourceObject);
					}
				}
			}
		} catch (IOException | InstantiationException | IllegalAccessException e) {
			e.printStackTrace();
		}
		return resources;
	}

	@Override
	public <T> T loadResource(Class<T> resource, String resourceIdValue) {
		JsonResource resAnnotation = resource.getAnnotation(JsonResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != JsonResourceLoader.class) {
			return null;
		}
		return loadResourceFromFile(resource, resAnnotation.fileName(), resourceIdValue);
	}

	@Override
	public <T> T loadResourceFromFile(Class<T> resource, String fileName, String resourceIdValue) {
		return loadResource(resource, fileName, ResourceLoader.getIdFieldName(resource), resourceIdValue);
	}

	@Override
	public <T> T loadResourceWithResourceId(Class<T> resource, String resourceId, String resourceIdValue) {
		JsonResource resAnnotation = resource.getAnnotation(JsonResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != JsonResourceLoader.class) {
			return null;
		}
		return loadResource(resource, resAnnotation.fileName(), resourceId, resourceIdValue);
	}

	@Override
	public <T> T loadResource(Class<T> resource, String fileName, String resourceId, String resourceIdValue) {
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
			return null;
		}
		if (resourceId == null) {
			return null;
		}
		if (resourceIdValue == null) {
			return null;
		}
		if (!ClassUtil.isContainField(resource, resourceId)) {
			return null;
		}
		InputStream inputStream;
		try {
			inputStream = new FileInputStream(file);
			StringBuilder stringBuilder = new StringBuilder();
			int byteRead = 0;
			while ((byteRead = inputStream.read()) != -1) {
				stringBuilder.append((char) byteRead);
			}
			inputStream.close();
			String data = stringBuilder.toString();
			JSONObject jsonO = new JSONObject(data);
			JSONArray jsonA = jsonO.getJSONArray(JSON_ROOT);
			for (int i = 0; i < jsonA.length(); i++) {
				JSONObject element = jsonA.getJSONObject(i);
				String keyValue = element.getString(resourceId);
				if (keyValue == null) {
					return null;
				}
				if (!keyValue.equals(resourceIdValue)) {
					continue;
				}
				String[] key = JSONObject.getNames(element);
				T resourceObject = resource.newInstance();
				for (String attribute : key) {
					ResourceLoader.setAttr(resourceObject, attribute, element.getString(attribute));
				}
				return resourceObject;
			}
		} catch (IOException | InstantiationException | IllegalAccessException e) {
			e.printStackTrace();
		}
		return null;
	}

}
