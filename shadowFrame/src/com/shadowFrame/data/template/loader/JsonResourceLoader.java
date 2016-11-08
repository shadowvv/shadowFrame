package com.shadowFrame.data.template.loader;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;

import com.shadowFrame.data.annotation.JsonResource;
import com.shadowFrame.data.template.ResourceLogger;
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
		return loadResourcesWithResourceId(resource, ResourceLoader.getIdFieldName(resource));
	}

	@Override
	public <T> Map<String, T> loadResourcesWithResourceId(Class<T> resource, String resourceId) {
		JsonResource resAnnotation = getAnnotation(resource);
		if (resAnnotation == null) {
			return null;
		}
		return loadResources(resource, resAnnotation.fileName(), resourceId);
	}

	@Override
	public <T> Map<String, T> loadResourcesFromFile(Class<T> resource, String fileName) {
		return loadResources(resource, fileName, ResourceLoader.getIdFieldName(resource));
	}

	@Override
	public <T> Map<String, T> loadResources(Class<T> resource, String fileName, String resourceId) {
		File file = checkFileFormat(resource, fileName, resourceId);
		if (file == null) {
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
							ResourceLogger.resourceContainDeplicateId(fileName, resourceIdValue);
							return null;
						}
						resources.put(resourceIdValue, resourceObject);
					}
				}
			}
		} catch (Exception e) {
			ResourceLogger.loadResourceException(fileName, e.getMessage());
		}
		ResourceLogger.loadSuccess(resource.getSimpleName(), fileName);
		return resources;
	}

	@Override
	public <T> T loadResource(Class<T> resource, String resourceIdValue) {
		return loadResourceWithResourceId(resource, ResourceLoader.getIdFieldName(resource), resourceIdValue);
	}

	@Override
	public <T> T loadResourceFromFile(Class<T> resource, String fileName, String resourceIdValue) {
		return loadResource(resource, fileName, ResourceLoader.getIdFieldName(resource), resourceIdValue);
	}

	@Override
	public <T> T loadResourceWithResourceId(Class<T> resource, String resourceId, String resourceIdValue) {
		JsonResource resAnnotation = getAnnotation(resource);
		if (resAnnotation == null) {
			return null;
		}
		return loadResource(resource, resAnnotation.fileName(), resourceId, resourceIdValue);
	}

	@Override
	public <T> T loadResource(Class<T> resource, String fileName, String resourceId, String resourceIdValue) {
		File file = checkFileFormat(resource, fileName, resourceId);
		if (file == null) {
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
					ResourceLogger.resourceNotContainIdValue(fileName, resourceIdValue);
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
				ResourceLogger.loadSuccess(resource.getSimpleName(), fileName, resourceIdValue);
				return resourceObject;
			}
		} catch (Exception e) {
			ResourceLogger.loadResourceException(fileName, e.getMessage());
		}
		ResourceLogger.resourceNotContainIdValue(fileName, resourceIdValue);
		return null;
	}

	@Override
	public List<Map<String, String>> loadResource(String fileName) {
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
			ResourceLogger.resourceNotExist(fileName);
			return null;
		}
		InputStream inputStream;
		List<Map<String, String>> datas = new ArrayList<>();
		try {
			inputStream = new FileInputStream(file);
			StringBuilder stringBuilder = new StringBuilder();
			int byteRead = 0;
			while ((byteRead = inputStream.read()) != -1) {
				stringBuilder.append((char) byteRead);
			}
			inputStream.close();
			String stringData = stringBuilder.toString();
			JSONObject jsonO = new JSONObject(stringData);
			JSONArray jsonA = jsonO.getJSONArray(JSON_ROOT);
			for (int i = 0; i < jsonA.length(); i++) {
				JSONObject element = jsonA.getJSONObject(i);
				String[] key = JSONObject.getNames(element);
				Map<String, String> data = new HashMap<>();
				for (String attribute : key) {
					data.put(attribute, element.getString(attribute));
				}
				datas.add(data);
			}
		} catch (IOException e) {
			ResourceLogger.loadResourceException(fileName, e.getMessage());
		}
		ResourceLogger.loadSuccess(fileName);
		return datas;
	}

	private File checkFileFormat(Class<?> resource, String fileName, String resourceId) {
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
			ResourceLogger.resourceNotExist(resource.getSimpleName(), fileName);
			return null;
		}
		if (!ClassUtil.isContainField(resource, resourceId)) {
			ResourceLogger.resourceClassNotContainResourceId(resource.getSimpleName(), resourceId);
			return null;
		}
		return file;
	}

	private JsonResource getAnnotation(Class<?> resource) {
		JsonResource resAnnotation = resource.getAnnotation(JsonResource.class);
		if (resAnnotation == null) {
			ResourceLogger.annotationError(resource.getSimpleName(), JsonResource.class.getSimpleName());
			return null;
		}
		if (resAnnotation.loader() != JsonResourceLoader.class) {
			ResourceLogger.annotationLoaderError(resource.getSimpleName(), JsonResourceLoader.class.getSimpleName());
			return null;
		}
		return resAnnotation;
	}
}
