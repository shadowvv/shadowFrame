package com.shadowFrame.data.template.loader;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

import com.shadowFrame.data.annotation.CsvResource;
import com.shadowFrame.data.annotation.ResourceId;
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
	public <T> Map<String, T> loadResource(Class<T> resource, String fileName) {
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
			return null;
		}
		Map<String, T> resources = new HashMap<>();
		try {
			ResourceId id = null;
			String keyAttrName = null;
			String keyAttrValue = null;
			@SuppressWarnings("resource")
			BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(fileName), "UTF-8"));
			String attrString = reader.readLine();
			if (attrString == null) {
				return null;
			}
			String[] attrNames = attrString.split(CSV_SEPERATOR);
			for (;;) {
				String attrValueString = reader.readLine();
				if (attrValueString == null) {
					break;
				}
				String[] attrValues = attrValueString.split(CSV_SEPERATOR);
				T resourceObject = resource.newInstance();
				int index = 0;
				for (String name : attrNames) {
					if (index >= attrValues.length) {
						return null;
					}
					ResourceLoader.setAttr(resourceObject, name, attrValues[index]);
					if (id == null) {
						Field field = ClassUtil.getClassField(resource, name);
						if (field == null) {
							return null;
						}
						id = field.getAnnotation(ResourceId.class);
						if (id != null) {
							keyAttrName = name;
						}
					}
					if (keyAttrName != null && keyAttrName.equals(name)) {
						keyAttrValue = attrValues[index];
						if (resources.containsKey(keyAttrValue)) {
							return null;
						}
						resources.put(keyAttrValue, resourceObject);
					}
					index++;
				}
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}
		return resources;
	}

	@Override
	public <T> Map<String, T> loadResource(Class<T> resource) {
		CsvResource resAnnotation = resource.getAnnotation(CsvResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != CsvResourceLoader.class) {
			return null;
		}
		return loadResource(resource, resAnnotation.fileName());
	}

}
