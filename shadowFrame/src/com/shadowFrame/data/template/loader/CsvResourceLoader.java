package com.shadowFrame.data.template.loader;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.shadowFrame.data.annotation.CsvResource;
import com.shadowFrame.data.template.ResourceLogger;
import com.shadowFrame.data.template.base.IResourceLoader;
import com.shadowFrame.util.ClassUtil;
import com.shadowFrame.util.FileUtil;

/**
 * csv格式资源加载器
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
 *
 */
public class CsvResourceLoader implements IResourceLoader {

	static String CSV_SEPERATOR = ",";

	@Override
	public <T> Map<String, T> loadResources(Class<T> resource) {
		return loadResourcesWithResourceId(resource, ResourceLoader.getIdFieldName(resource));
	}

	@Override
	public <T> Map<String, T> loadResourcesWithResourceId(Class<T> resource, String resourceId) {
		CsvResource resAnnotation = getAnnotation(resource);
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
		try {
			String resourceIdValue = null;
			@SuppressWarnings("resource")
			BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(fileName), "UTF-8"));
			String attrString = reader.readLine();
			if (attrString == null) {
				ResourceLogger.resourceNotContainSegments(fileName);
				return null;
			}
			String[] attrNames = attrString.split(CSV_SEPERATOR);
			int elementIndex = 1;
			for (;;) {
				String attrValueString = reader.readLine();
				if (attrValueString == null) {
					break;
				}
				String[] attrValues = attrValueString.split(CSV_SEPERATOR);
				if (attrNames.length != attrValues.length) {
					ResourceLogger.resourceElementNotMatchSegment(fileName, elementIndex);
					return null;
				}
				T resourceObject = resource.newInstance();
				int index = 0;
				for (String name : attrNames) {
					ResourceLoader.setAttr(resourceObject, name, attrValues[index]);
					if (resourceId.equals(name)) {
						resourceIdValue = attrValues[index];
						if (resources.containsKey(resourceIdValue)) {
							ResourceLogger.resourceContainDeplicateId(fileName, resourceIdValue);
							return null;
						}
						resources.put(resourceIdValue, resourceObject);
					}
					index++;
				}
				elementIndex++;
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
	public <T> T loadResourceWithResourceId(Class<T> resource, String resourceId, String resourceIdValue) {
		CsvResource resAnnotation = getAnnotation(resource);
		if (resAnnotation == null) {
			return null;
		}
		return loadResource(resource, resAnnotation.fileName(), resourceId, resourceIdValue);
	}

	@Override
	public <T> T loadResourceFromFile(Class<T> resource, String fileName, String resourceIdValue) {
		return loadResource(resource, fileName, ResourceLoader.getIdFieldName(resource), resourceIdValue);
	}

	@Override
	public <T> T loadResource(Class<T> resource, String fileName, String resourceId, String resourceIdValue) {
		File file = checkFileFormat(resource, fileName, resourceId);
		if (file == null) {
			return null;
		}
		try {
			@SuppressWarnings("resource")
			BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
			String attrString = reader.readLine();
			if (attrString == null) {
				ResourceLogger.resourceNotContainSegments(fileName);
				return null;
			}
			String[] attrNames = attrString.split(CSV_SEPERATOR);
			int idIndex = -1;
			for (int i = 0; i < attrNames.length; i++) {
				if (attrNames[i].equals(resourceId)) {
					idIndex = i;
					break;
				}
			}
			if (idIndex == -1) {
				ResourceLogger.resourceClassNotContainResourceId(resource.getSimpleName(), resourceId);
				return null;
			}
			int elementIndex = 0;
			for (;;) {
				elementIndex++;
				String attrValueString = reader.readLine();
				if (attrValueString == null) {
					break;
				}
				String[] attrValues = attrValueString.split(CSV_SEPERATOR);
				if (!attrValues[idIndex].equals(resourceIdValue)) {
					continue;
				}
				if (attrNames.length != attrValues.length) {
					ResourceLogger.resourceElementNotMatchSegment(fileName, elementIndex);
					return null;
				}
				T resourceObject = resource.newInstance();
				int index = 0;
				for (String name : attrNames) {
					ResourceLoader.setAttr(resourceObject, name, attrValues[index]);
					index++;
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
		List<Map<String, String>> datas = new ArrayList<>();
		try {
			@SuppressWarnings("resource")
			BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(fileName), "UTF-8"));
			String attrString = reader.readLine();
			if (attrString == null) {
				ResourceLogger.resourceNotContainSegments(fileName);
				return null;
			}
			String[] attrNames = attrString.split(CSV_SEPERATOR);
			int elementIndex = 1;
			for (;;) {
				String attrValueString = reader.readLine();
				if (attrValueString == null) {
					break;
				}
				String[] attrValues = attrValueString.split(CSV_SEPERATOR);
				if (attrNames.length != attrValues.length) {
					ResourceLogger.resourceElementNotMatchSegment(fileName, elementIndex);
					return null;
				}
				int index = 0;
				Map<String, String> data = new HashMap<>();
				for (String name : attrNames) {
					data.put(name, attrValues[index]);
					index++;
				}
				datas.add(data);
				elementIndex++;
			}
			ResourceLogger.loadSuccess(fileName);
			return datas;
		} catch (Exception e) {
			ResourceLogger.loadResourceException(fileName, e.getMessage());
		}
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

	private CsvResource getAnnotation(Class<?> resource) {
		CsvResource resAnnotation = resource.getAnnotation(CsvResource.class);
		if (resAnnotation == null) {
			ResourceLogger.annotationError(resource.getSimpleName(), CsvResource.class.getSimpleName());
			return null;
		}
		if (resAnnotation.loader() != CsvResourceLoader.class) {
			ResourceLogger.annotationLoaderError(resource.getSimpleName(), CsvResourceLoader.class.getSimpleName());
			return null;
		}
		return resAnnotation;
	}

}
