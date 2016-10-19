package com.shadowFrame.data.template.loader;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

import com.shadowFrame.data.annotation.CsvResource;
import com.shadowFrame.data.annotation.JsonResource;
import com.shadowFrame.data.annotation.PropertiesResource;
import com.shadowFrame.data.annotation.ResourceId;
import com.shadowFrame.data.annotation.XmlResource;
import com.shadowFrame.data.template.base.BaseTemplate;
import com.shadowFrame.data.template.base.IResourceLoader;
import com.shadowFrame.util.ClassUtil;

/**
 * 模版文件加载器
 * 
 * @author Shadow
 * @version 1.0.0
 *
 */
public class ResourceLoader {

	private Map<String, Class<? extends IResourceLoader>> loaderMap;
	
	private static ResourceLoader instance;
	
	public static ResourceLoader getInstance(){
		if(instance == null){
			instance = new ResourceLoader();
		}
		return instance;
	}

	private ResourceLoader() {
		loaderMap = new HashMap<>();
		registerLoader(CsvResource.class,CsvResourceLoader.class);
		registerLoader(JsonResource.class,JsonResourceLoader.class);
		registerLoader(PropertiesResource.class,PropertiesResourceLoader.class);
		registerLoader(XmlResource.class,XmlResourceLoader.class);
	}

	/**
	 * 注册资源加载器
	 * 
	 * @param loader
	 */
	public void registerLoader(Class<?> resourceAnnotation,Class<? extends IResourceLoader> loader) {
		loaderMap.put(resourceAnnotation.getName(), loader);
	}

	/**
	 * 加载模版数据,T必须被包含文件名和loader类的Annotation标记<br>
	 * 文件名包含文件路径
	 * <P>
	 * 返回值:如果resource中有被{@link ResourceId}标记的字段，则key为该字段。如果没有key为resource类名,且只有一组数据<br>
	 * 
	 * @param template
	 *            模版类
	 * @return
	 */
	public <T extends BaseTemplate> Map<String, T> loadTemplate(T template) {
		Annotation annotations[] = template.getClass().getAnnotations();
		for (Annotation annotation : annotations) {
			Class<? extends IResourceLoader> loader = loaderMap.get(annotation.annotationType().getName());
			if (loader != null) {
				try {
					Map<String, T> resources = loader.newInstance().loadResource(template);
					for (T resource : resources.values()) {
						if (resource.invalid()) {
							return null;
						}
						resource.assembly();
					}
					return resources;
				} catch (InstantiationException e) {
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

	/**
	 * 加载模版数据,T必须被包含文件名和loader类的Annotation标记
	 * 
	 * <P>
	 * 返回值:如果resource中有被{@link ResourceId}标记的字段，则key为该字段。如果没有key为resource类名,且只有一组数据<br>
	 * 
	 * @param template
	 *            模版类
	 * @param fileName
	 *            文件路径
	 * @return
	 */
	public <T extends BaseTemplate> Map<String, T> loadTemplate(T template, String fileName) {
		Annotation annotations[] = template.getClass().getAnnotations();
		for (Annotation annotation : annotations) {
			Class<? extends IResourceLoader> loader = loaderMap.get(annotation.annotationType().getName());
			if (loader != null) {
				try {
					Map<String, T> resources = loader.newInstance().loadResource(template, fileName);
					for (T resource : resources.values()) {
						if (resource.invalid()) {
							return null;
						}
						resource.assembly();
					}
					return resources;
				} catch (InstantiationException e) {
					e.printStackTrace();
				} catch (IllegalAccessException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

	/**
	 * 加载Propertis格式资源，资源必须由{@link PropertiesResource}标注
	 * <P>
	 * 返回值:key为resource类名,且只有一组数据<br>
	 * 
	 * @param resource
	 *            资源映射类
	 * @return
	 */
	public static <T> Map<String, T> loadPropertis(T resource) {
		PropertiesResource resAnnotation = resource.getClass().getAnnotation(PropertiesResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != PropertiesResourceLoader.class) {
			return null;
		}
		return loadPropertis(resource, resAnnotation.fileName());
	}

	/**
	 * 加载Propertis格式资源
	 * <P>
	 * 返回值:key为resource类名,且只有一组数据<br>
	 * 
	 * @param resource
	 *            资源映射类
	 * @param fileName
	 *            资源名
	 * @return
	 */
	public static <T> Map<String, T> loadPropertis(T resource, String fileName) {
		return new PropertiesResourceLoader().loadResource(resource, fileName);
	}

	/**
	 * 加载csv格式资源，资源必须由{@link CsvResource}标注
	 * <P>
	 * 返回值:如果resource中有被{@link ResourceId}标记的字段，则key为该字段。如果没有key为resource类名,且只有一组数据<br>
	 * 
	 * @param resource
	 *            资源映射类
	 * @return
	 */
	public static <T> Map<String, T> loadCsv(T resource) {
		CsvResource resAnnotation = resource.getClass().getAnnotation(CsvResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != CsvResourceLoader.class) {
			return null;
		}
		return loadCsv(resource, resAnnotation.fileName());
	}

	/**
	 * 加载csv格式资源
	 * <P>
	 * 返回值:如果resource中有被{@link ResourceId}标记的字段，则key为该字段。如果没有key为resource类名,且只有一组数据<br>
	 * 
	 * @param resource
	 *            资源映射类
	 * @param fileName
	 *            资源名
	 * @return
	 */
	public static <T> Map<String, T> loadCsv(T resource, String fileName) {
		return new CsvResourceLoader().loadResource(resource, fileName);
	}

	/**
	 * 加载xml格式资源，资源必须由{@link XmlResource}标注
	 * <P>
	 * 返回值:如果resource中有被{@link ResourceId}标记的字段，则key为该字段。如果没有key为resource类名,且只有一组数据<br>
	 * 
	 * @param resource
	 *            资源映射类
	 * @return
	 */
	public static <T> Map<String, T> loadXml(T resource) {
		XmlResource resAnnotation = resource.getClass().getAnnotation(XmlResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != XmlResourceLoader.class) {
			return null;
		}
		return loadXml(resource, resAnnotation.fileName());
	}

	/**
	 * 加载xml格式资源
	 * <P>
	 * 返回值:如果resource中有被{@link ResourceId}标记的字段，则key为该字段。如果没有key为resource类名,且只有一组数据<br>
	 * 
	 * @param resource
	 *            资源映射类
	 * @param fileName
	 *            资源名
	 * @return
	 */
	public static <T> Map<String, T> loadXml(T resource, String fileName) {
		return new XmlResourceLoader().loadResource(resource, fileName);
	}

	/**
	 * 加载Json格式资源，资源必须由{@link JsonResource}标注
	 * <P>
	 * 返回值:如果resource中有被{@link ResourceId}标记的字段，则key为该字段。如果没有key为resource类名,且只有一组数据<br>
	 * 
	 * @param resource
	 *            资源映射类
	 * @return
	 */
	public static <T> Map<String, T> loadJson(T resource) {
		JsonResource resAnnotation = resource.getClass().getAnnotation(JsonResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != JsonResourceLoader.class) {
			return null;
		}
		return loadJson(resource, resAnnotation.fileName());
	}

	/**
	 * 加载Json格式资源
	 * <P>
	 * 返回值:如果resource中有被{@link ResourceId}标记的字段，则key为该字段。如果没有key为resource类名,且只有一组数据<br>
	 * 
	 * @param resource
	 *            资源映射类
	 * @param fileName
	 *            资源名
	 * @return
	 */
	public static <T> Map<String, T> loadJson(T resource, String fileName) {
		return new JsonResourceLoader().loadResource(resource, fileName);
	}

	/**
	 * 赋值映射对象字段
	 * 
	 * @param instance
	 *            对象
	 * @param attrName
	 *            字段名
	 * @param attrValue
	 *            字段值
	 */
	public static void setAttr(Object instance, String attrName, String attrValue) {
		if (attrName == null || attrName.equals("")) {
			return;
		}
		if (attrValue == null || attrValue.equals("")) {
			return;
		}
		Field field = ClassUtil.getClassField(instance, attrName);
		if (field == null) {
			return;
		}
		String type = field.getType().toString();
		field.setAccessible(true);
		try {
			if (type.indexOf("boolean") >= 0 || type.indexOf("Boolean") >= 0) {
				if (attrValue.equals("0")) {
					field.set(instance, false);
				} else if (attrValue.equals("1")) {
					field.set(instance, true);
				} else {
					field.set(instance, Boolean.valueOf(attrValue));
				}
			} else if (type.indexOf("int") >= 0 || type.indexOf("Integer") >= 0) {
				field.set(instance, Integer.valueOf(attrValue));
			} else if (type.indexOf("long") >= 0 || type.indexOf("Long") >= 0) {
				field.set(instance, Long.valueOf(attrValue));
			} else if (type.indexOf("float") >= 0 || type.indexOf("Float") >= 0) {
				field.set(instance, Float.valueOf(attrValue));
			} else if (type.indexOf("double") >= 0 || type.indexOf("Double") >= 0) {
				field.set(instance, Double.valueOf(attrValue));
			} else if (type.indexOf("String") >= 0) {
				field.set(instance, attrValue);
			}
		} catch (Exception e) {

		}

	}
}
