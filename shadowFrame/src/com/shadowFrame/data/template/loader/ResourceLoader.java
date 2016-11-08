package com.shadowFrame.data.template.loader;

import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

import com.shadowFrame.data.annotation.CsvResource;
import com.shadowFrame.data.annotation.ExcelResource;
import com.shadowFrame.data.annotation.JsonResource;
import com.shadowFrame.data.annotation.PropertiesResource;
import com.shadowFrame.data.annotation.ResourceId;
import com.shadowFrame.data.annotation.XmlResource;
import com.shadowFrame.data.template.base.BaseTemplate;
import com.shadowFrame.data.template.base.IResourceLoader;
import com.shadowFrame.log.ShadowLogger;
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

	public static ResourceLoader getInstance() {
		if (instance == null) {
			instance = new ResourceLoader();
		}
		return instance;
	}

	private ResourceLoader() {
		loaderMap = new HashMap<>();
		registerLoader(CsvResource.class, CsvResourceLoader.class);
		registerLoader(JsonResource.class, JsonResourceLoader.class);
		registerLoader(PropertiesResource.class, PropertiesResourceLoader.class);
		registerLoader(XmlResource.class, XmlResourceLoader.class);
		registerLoader(ExcelResource.class, ExcelResourceLoader.class);
	}

	/**
	 * 注册资源加载器
	 * 
	 * @param loader
	 */
	public void registerLoader(Class<?> resourceAnnotation, Class<? extends IResourceLoader> loader) {
		ShadowLogger.logPrintln("add " + resourceAnnotation.getSimpleName() + "'s loader " + loader.getSimpleName());
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
	 * @return 资源map,加载失败返回null
	 */
	public <T extends BaseTemplate> Map<String, T> loadTemplate(Class<T> template) {
		Annotation annotations[] = template.getAnnotations();
		for (Annotation annotation : annotations) {
			Class<? extends IResourceLoader> loader = loaderMap.get(annotation.annotationType().getName());
			if (loader != null) {
				try {
					Map<String, T> resources = loader.newInstance().loadResources(template);
					if (resources == null) {
						return null;
					}
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
	 * @return 资源map,加载失败返回null
	 */
	public <T extends BaseTemplate> Map<String, T> loadTemplate(Class<T> template, String fileName) {
		Annotation annotations[] = template.getAnnotations();
		for (Annotation annotation : annotations) {
			Class<? extends IResourceLoader> loader = loaderMap.get(annotation.annotationType().getName());
			if (loader != null) {
				try {
					Map<String, T> resources = loader.newInstance().loadResourcesFromFile(template, fileName);
					if (resources == null) {
						return null;
					}
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
	 * @return 资源map,加载失败返回null
	 */
	public static <T> Map<String, T> loadPropertis(Class<T> resource) {
		return new PropertiesResourceLoader().loadResources(resource);
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
	 * @return 资源map,加载失败返回null
	 */
	public static <T> Map<String, T> loadPropertis(Class<T> resource, String fileName) {
		return new PropertiesResourceLoader().loadResourcesFromFile(resource, fileName);
	}

	/**
	 * 加载csv格式资源，资源必须由{@link CsvResource}标注
	 * <P>
	 * 返回值:如果resource中有被{@link ResourceId}标记的字段，则key为该字段。如果没有key为resource类名,且只有一组数据<br>
	 * 
	 * @param resource
	 *            资源映射类
	 * @return 资源map,加载失败返回null
	 */
	public static <T> Map<String, T> loadCsv(Class<T> resource) {
		return new CsvResourceLoader().loadResources(resource);
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
	 * @return 资源map,加载失败返回null
	 */
	public static <T> Map<String, T> loadCsv(Class<T> resource, String fileName) {
		return new CsvResourceLoader().loadResourcesFromFile(resource, fileName);
	}

	/**
	 * 加载xml格式资源，资源必须由{@link XmlResource}标注
	 * <P>
	 * 返回值:如果resource中有被{@link ResourceId}标记的字段，则key为该字段。如果没有key为resource类名,且只有一组数据<br>
	 * 
	 * @param resource
	 *            资源映射类
	 * @return 资源map,加载失败返回null
	 */
	public static <T> Map<String, T> loadXml(Class<T> resource) {
		return new XmlResourceLoader().loadResources(resource);
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
	 * @return 资源map,加载失败返回null
	 */
	public static <T> Map<String, T> loadXml(Class<T> resource, String fileName) {
		return new XmlResourceLoader().loadResourcesFromFile(resource, fileName);
	}

	/**
	 * 加载Json格式资源，资源必须由{@link JsonResource}标注
	 * <P>
	 * 返回值:如果resource中有被{@link ResourceId}标记的字段，则key为该字段。如果没有key为resource类名,且只有一组数据<br>
	 * 
	 * @param resource
	 *            资源映射类
	 * @return 资源map,加载失败返回null
	 */
	public static <T> Map<String, T> loadJson(Class<T> resource) {
		return new JsonResourceLoader().loadResources(resource);
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
	 * @return 资源map,加载失败返回null
	 */
	public static <T> Map<String, T> loadJson(Class<T> resource, String fileName) {
		return new JsonResourceLoader().loadResourcesFromFile(resource, fileName);
	}

	/**
	 * 加载excel格式资源，资源必须由{@link ExcelResource}标注
	 * <P>
	 * 返回值:如果resource中有被{@link ResourceId}标记的字段，则key为该字段。如果没有key为resource类名,且只有一组数据<br>
	 * 
	 * @param resource
	 *            资源映射类
	 * @return 资源map,加载失败返回null
	 */
	public static <T> Map<String, T> loadExcel(Class<T> resource) {
		return new ExcelResourceLoader().loadResources(resource);
	}

	/**
	 * 加载excel格式资源
	 * <P>
	 * 返回值:如果resource中有被{@link ResourceId}标记的字段，则key为该字段。如果没有key为resource类名,且只有一组数据<br>
	 * 
	 * @param resource
	 *            资源映射类
	 * @param fileName
	 *            资源名
	 * @return 资源map,加载失败返回null
	 */
	public static <T> Map<String, T> loadExcel(Class<T> resource, String fileName) {
		return new ExcelResourceLoader().loadResourcesFromFile(resource, fileName);
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
		Field field = ClassUtil.getClassField(instance.getClass(), attrName);
		if (field == null) {
			ShadowLogger.errorPrintln(instance.getClass().getSimpleName() + " is not contained field " + attrName);
			return;
		}
		String type = field.getType().toString();
		field.setAccessible(true);
		try {
			if (type.indexOf("boolean") >= 0 || type.indexOf("Boolean") >= 0) {
				if ("0".equals(attrValue)) {
					field.set(instance, false);
				} else if ("1".equals(attrValue)) {
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
			ShadowLogger.exceptionPrintln(
					instance.getClass().getSimpleName() + " set field " + attrName + " value catch exception");
		}
	}

	/**
	 * 获得资源映射类中id字段
	 * 
	 * @param resource
	 *            映射类
	 * @return
	 */
	public static String getIdFieldName(Class<?> resource) {
		ResourceId id = null;
		Field[] fields = resource.getDeclaredFields();
		for (Field attr : fields) {
			id = attr.getAnnotation(ResourceId.class);
			if (id != null) {
				return attr.getName();
			}
		}
		return null;
	}
}
