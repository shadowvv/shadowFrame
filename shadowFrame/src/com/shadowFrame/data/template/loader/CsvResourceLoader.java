package com.shadowFrame.data.template.loader;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.shadowFrame.data.annotation.CsvResource;
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
		CsvResource resAnnotation = resource.getAnnotation(CsvResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != CsvResourceLoader.class) {
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
			return null;
		}
		if (resAnnotation.loader() != CsvResourceLoader.class) {
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
		try {
			String resourceIdValue = null;
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
					if (resourceId.equals(name)) {
						resourceIdValue = attrValues[index];
						if (resources.containsKey(resourceIdValue)) {
							return null;
						}
						resources.put(resourceIdValue, resourceObject);
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
	public <T> T loadResource(Class<T> resource, String resourceIdValue) {
		CsvResource resAnnotation = resource.getAnnotation(CsvResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != CsvResourceLoader.class) {
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
		CsvResource resAnnotation = resource.getAnnotation(CsvResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != CsvResourceLoader.class) {
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
		try {
			@SuppressWarnings("resource")
			BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(fileName), "UTF-8"));
			String attrString = reader.readLine();
			if (attrString == null) {
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
				T resourceObject = resource.newInstance();
				int index = 0;
				for (String name : attrNames) {
					if (index >= attrValues.length) {
						return null;
					}
					ResourceLoader.setAttr(resourceObject, name, attrValues[index]);
					index++;
				}
				return resourceObject;
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
		return null;
	}

	@Override
	public List<Map<String, String>> loadResource(String fileName) {
		if(!fileName.endsWith(".csv")){
			return null;
		}
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
			return null;
		}
		List<Map<String, String>> datas = new ArrayList<>();
		try {
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
				int index = 0;
				Map<String, String> data = new HashMap<>();
				for (String name : attrNames) {
					if (index >= attrValues.length) {
						return null;
					}
					data.put(name, attrValues[index]);
					index++;
				}
				datas.add(data);
			}
			return datas;
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

}
