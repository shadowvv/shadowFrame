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
import com.shadowFrame.data.template.base.IResourceLoader;
import com.shadowFrame.log.ShadowLogger;
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
		CsvResource resAnnotation = resource.getAnnotation(CsvResource.class);
		if (resAnnotation == null) {
			ShadowLogger.errorPrintln(
					resource.getSimpleName() + " resource is not annotated by" + CsvResource.class.getSimpleName());
			return null;
		}
		if (resAnnotation.loader() != CsvResourceLoader.class) {
			ShadowLogger.errorPrintln(resource.getSimpleName() + " annotation's loader is not "
					+ CsvResourceLoader.class.getSimpleName());
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
		CsvResource resAnnotation = resource.getAnnotation(CsvResource.class);
		if (resAnnotation == null) {
			ShadowLogger.errorPrintln(
					resource.getSimpleName() + " resource is not annotated by" + CsvResource.class.getSimpleName());
			return null;
		}
		if (resAnnotation.loader() != CsvResourceLoader.class) {
			ShadowLogger.errorPrintln(resource.getSimpleName() + " annotation's loader is not "
					+ CsvResourceLoader.class.getSimpleName());
			return null;
		}
		return loadResources(resource, resAnnotation.fileName(), resourceId);
	}

	@Override
	public <T> Map<String, T> loadResources(Class<T> resource, String fileName, String resourceId) {
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
			ShadowLogger.errorPrintln(resource.getSimpleName() + "'s resource " + fileName + " is not existed");
			return null;
		}
		if (resourceId == null) {
			ShadowLogger.errorPrintln(resource.getSimpleName() + "'s resourceId = null");
			return null;
		}
		if (!ClassUtil.isContainField(resource, resourceId)) {
			ShadowLogger.errorPrintln(resource.getSimpleName() + "'s not contain " + resourceId);
			return null;
		}
		Map<String, T> resources = new HashMap<>();
		try {
			String resourceIdValue = null;
			@SuppressWarnings("resource")
			BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(fileName), "UTF-8"));
			String attrString = reader.readLine();
			if (attrString == null) {
				ShadowLogger.errorPrintln(fileName + "'s not contain segment element");
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
					ShadowLogger.errorPrintln(
							fileName + "'s " + elementIndex + "th elemnt attribute is not match with segment");
					return null;
				}
				T resourceObject = resource.newInstance();
				int index = 0;
				for (String name : attrNames) {
					ResourceLoader.setAttr(resourceObject, name, attrValues[index]);
					if (resourceId.equals(name)) {
						resourceIdValue = attrValues[index];
						if (resources.containsKey(resourceIdValue)) {
							ShadowLogger.errorPrintln(fileName + " contain duplicate id:" + resourceIdValue);
							return null;
						}
						resources.put(resourceIdValue, resourceObject);
					}
					index++;
				}
				elementIndex++;
			}
		} catch (Exception e) {
			ShadowLogger.exceptionPrintln("load " + fileName + " catch exception" + e.getMessage());
		}
		ShadowLogger.logPrintln(resource.getSimpleName() + "'s resource " + fileName + " load success");
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
		CsvResource resAnnotation = resource.getAnnotation(CsvResource.class);
		if (resAnnotation == null) {
			ShadowLogger.errorPrintln(
					resource.getSimpleName() + " resource is not annotated by" + CsvResource.class.getSimpleName());
			return null;
		}
		if (resAnnotation.loader() != CsvResourceLoader.class) {
			ShadowLogger.errorPrintln(resource.getSimpleName() + " annotation's loader is not "
					+ CsvResourceLoader.class.getSimpleName());
			return null;
		}
		return loadResource(resource, resAnnotation.fileName(), resourceId, resourceIdValue);
	}

	@Override
	public <T> T loadResource(Class<T> resource, String fileName, String resourceId, String resourceIdValue) {
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
			ShadowLogger.errorPrintln(resource.getSimpleName() + "'s resource " + fileName + " is not existed");
			return null;
		}
		if (resourceId == null) {
			ShadowLogger.errorPrintln(resource.getSimpleName() + "'s resource " + resourceId + " is null");
			return null;
		}
		if (resourceIdValue == null) {
			ShadowLogger.errorPrintln("load " + fileName + " resourceIdValue = null");
			return null;
		}
		if (!ClassUtil.isContainField(resource, resourceId)) {
			ShadowLogger.errorPrintln(resource.getSimpleName() + "'s not contain " + resourceId);
			return null;
		}
		try {
			@SuppressWarnings("resource")
			BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(fileName), "UTF-8"));
			String attrString = reader.readLine();
			if (attrString == null) {
				ShadowLogger.errorPrintln(fileName + "'s not contain segment element");
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
				ShadowLogger.errorPrintln(fileName + "'s not contain " + resourceId);
				return null;
			}
			for (;;) {
				String attrValueString = reader.readLine();
				if (attrValueString == null) {
					break;
				}
				String[] attrValues = attrValueString.split(CSV_SEPERATOR);
				if (!attrValues[idIndex].equals(resourceIdValue)) {
					continue;
				}
				if (attrNames.length != attrValues.length) {
					ShadowLogger.errorPrintln(fileName + "'s elemnt attribute is not match with segment");
					return null;
				}
				T resourceObject = resource.newInstance();
				int index = 0;
				for (String name : attrNames) {
					ResourceLoader.setAttr(resourceObject, name, attrValues[index]);
					index++;
				}
				ShadowLogger.logPrintln("load " + resource.getSimpleName() + " from" + fileName + " id = "
						+ resourceIdValue + " success");
				return resourceObject;
			}
		} catch (Exception e) {
			ShadowLogger.exceptionPrintln("load " + fileName + " catch exception" + e.getMessage());
		}
		ShadowLogger.logPrintln(fileName + " is not contain id = " + resourceIdValue + " element");
		return null;
	}

	@Override
	public List<Map<String, String>> loadResource(String fileName) {
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
			ShadowLogger.errorPrintln(fileName + " is not existed");
			return null;
		}
		List<Map<String, String>> datas = new ArrayList<>();
		try {
			@SuppressWarnings("resource")
			BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(fileName), "UTF-8"));
			String attrString = reader.readLine();
			if (attrString == null) {
				ShadowLogger.errorPrintln(fileName + "'s not contain segment element");
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
					ShadowLogger.errorPrintln(
							fileName + "'s " + elementIndex + " elemnt attribute is not match with segment");
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
			ShadowLogger.logPrintln("load " + fileName + " success");
			return datas;
		} catch (Exception e) {
			ShadowLogger.exceptionPrintln("load " + fileName + " catch exception" + e.getMessage());
		}
		return datas;
	}

}
