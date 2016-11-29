package com.shadowFrame.data.template.loader;

import java.lang.reflect.Field;
import java.util.List;
import java.util.Map;

import com.shadowFrame.data.annotation.ResourceFmtAnnotation;
import com.shadowFrame.data.annotation.ResourceId;
import com.shadowFrame.data.template.ResourceLogger;
import com.shadowFrame.data.template.base.IResourceLoader;
import com.shadowFrame.data.template.base.ResourceFmt;
import com.shadowFrame.log.ShadowLogger;
import com.shadowFrame.util.ClassUtil;

/**
 * 模版文件加载器
 * 
 * @author Shadow
 * @version 1.0.0
 *
 */
public class ResourceLoader implements IResourceLoader {

	private IResourceLoader loader;

	public ResourceLoader(ResourceFmt fmt) {
		loader = fmt.getLoader();
	}

	@Override
	public <T> Map<String, T> loadResources(Class<T> resource) {
		return loader.loadResources(resource);
	}

	@Override
	public <T> Map<String, T> loadResourcesFromFile(Class<T> resource, String fileName) {
		return loader.loadResourcesFromFile(resource, fileName);
	}

	@Override
	public <T> Map<String, T> loadResourcesWithResourceId(Class<T> resource, String resourceId) {
		return loader.loadResourcesWithResourceId(resource, resourceId);
	}

	@Override
	public <T> Map<String, T> loadResources(Class<T> resource, String fileName, String resourceId) {
		return loader.loadResources(resource, fileName, resourceId);
	}

	@Override
	public <T> T loadResource(Class<T> resource, String resourceIdValue) {
		return loader.loadResource(resource, resourceIdValue);
	}

	@Override
	public <T> T loadResourceFromFile(Class<T> resource, String fileName, String resourceIdValue) {
		return loader.loadResourceFromFile(resource, fileName, resourceIdValue);
	}

	@Override
	public <T> T loadResourceWithResourceId(Class<T> resource, String resourceId, String resourceIdValue) {
		return loader.loadResourceWithResourceId(resource, resourceId, resourceIdValue);
	}

	@Override
	public <T> T loadResource(Class<T> resource, String fileName, String resourceId, String resourceIdValue) {
		return loader.loadResource(resource, fileName, resourceId, resourceIdValue);
	}

	@Override
	public List<Map<String, String>> loadResource(String fileName) {
		return loader.loadResource(fileName);
	}

	/**
	 * 加载资源
	 * 
	 * @param resource
	 *            资源映射类
	 * @return
	 */
	public static <T> Map<String, T> loadAnnotationResources(Class<T> resource) {
		ResourceFmtAnnotation resAnnotation = resource.getAnnotation(ResourceFmtAnnotation.class);
		if (resAnnotation == null) {
			return null;
		}
		return resAnnotation.format().getLoader().loadResources(resource);
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

	/**
	 * 获得资源类对应的注释
	 * 
	 * @param resource
	 *            资源映射类
	 * @param fmt
	 *            资源格式
	 * @return
	 */
	public static ResourceFmtAnnotation getFmtAnnotation(Class<?> resource, ResourceFmt fmt) {
		ResourceFmtAnnotation resAnnotation = resource.getAnnotation(ResourceFmtAnnotation.class);
		if (resAnnotation == null) {
			ResourceLogger.annotationError(resource.getSimpleName(), ResourceFmtAnnotation.class.getSimpleName());
			return null;
		}
		if (resAnnotation.format() != fmt) {
			ResourceLogger.annotationReosurceFmtError(resource.getSimpleName(), fmt);
			return null;
		}
		return resAnnotation;
	}
}
