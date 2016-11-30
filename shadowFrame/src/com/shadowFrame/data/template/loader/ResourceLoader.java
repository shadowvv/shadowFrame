package com.shadowFrame.data.template.loader;

import java.util.List;
import java.util.Map;

import com.shadowFrame.data.annotation.ResourceFmtAnnotation;
import com.shadowFrame.data.template.base.BaseTemplate;
import com.shadowFrame.data.template.base.IResourceLoader;
import com.shadowFrame.data.template.base.ResourceFmt;
import com.shadowFrame.util.PreconditionUtil;

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
		
		PreconditionUtil.checkState(resAnnotation != null,
				resource.getSimpleName() + " class is not annotated by" + ResourceFmtAnnotation.class.getSimpleName());
		
		return resAnnotation.format().getLoader().loadResources(resource);
	}

	/**
	 * 加载引擎模版数据
	 * 
	 * @param resource
	 *            模版资源映射类
	 * @return
	 */
	public static <T extends BaseTemplate> Map<String, T> loadTemplate(Class<T> resource) {
		Map<String, T> datas = loadAnnotationResources(resource);
		for (String key : datas.keySet()) {
			T element = datas.get(key);
			PreconditionUtil.checkState(!element.invalid(),
					resource.getSimpleName() + " has invalid data at key = " + key);

			element.assembly();
		}
		return datas;
	}

}
