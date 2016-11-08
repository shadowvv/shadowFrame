package com.shadowFrame.data.template.loader;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import com.shadowFrame.data.annotation.XmlResource;
import com.shadowFrame.data.template.ResourceLogger;
import com.shadowFrame.data.template.base.IResourceLoader;
import com.shadowFrame.util.ClassUtil;
import com.shadowFrame.util.FileUtil;

/**
 * xml格式资源加载器
 * <p>
 * 文件样式 参考resource目录下xmlSmaple.xml
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class XmlResourceLoader implements IResourceLoader {

	@Override
	public <T> Map<String, T> loadResources(Class<T> resource) {
		return loadResourcesWithResourceId(resource, ResourceLoader.getIdFieldName(resource));
	}

	@Override
	public <T> Map<String, T> loadResourcesFromFile(Class<T> resource, String fileName) {
		return loadResources(resource, fileName, ResourceLoader.getIdFieldName(resource));
	}

	@Override
	public <T> Map<String, T> loadResourcesWithResourceId(Class<T> resource, String resourceId) {
		XmlResource resAnnotation = getAnnotation(resource);
		if (resAnnotation == null) {
			return null;
		}
		return loadResources(resource, resAnnotation.fileName(), resourceId);
	}

	@Override
	public <T> Map<String, T> loadResources(Class<T> resource, String fileName, String resourceId) {
		File file = checkFileFormat(resource, fileName, resourceId);
		if (file == null) {
			return null;
		}
		Map<String, T> resources = new HashMap<>();
		SAXReader reader = new SAXReader();
		try {
			Document doc = reader.read(file);
			Element root = doc.getRootElement();
			String resourceIdValue = null;
			@SuppressWarnings("unchecked")
			List<Element> elements = root.elements();
			for (Element element : elements) {
				@SuppressWarnings("unchecked")
				List<Attribute> attrs = element.attributes();
				T resourceObject = resource.newInstance();
				for (Attribute attribute : attrs) {
					ResourceLoader.setAttr(resourceObject, attribute.getName(), attribute.getValue());
					if (resourceId.equals(attribute.getName())) {
						resourceIdValue = attribute.getValue();
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
	public <T> T loadResourceWithResourceId(Class<T> resource, String resourceId, String resourceIdValue) {
		XmlResource resAnnotation = getAnnotation(resource);
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
		SAXReader reader = new SAXReader();
		try {
			Document doc = reader.read(file);
			Element root = doc.getRootElement();
			@SuppressWarnings("unchecked")
			List<Element> elements = root.elements();
			for (Element element : elements) {
				Attribute idAttr = element.attribute(resourceId);
				if (idAttr == null) {
					ResourceLogger.resourceNotContainIdValue(fileName, resourceIdValue);
					return null;
				}
				if (!idAttr.getValue().equals(resourceIdValue)) {
					continue;
				}
				@SuppressWarnings("unchecked")
				List<Attribute> attrs = element.attributes();
				T resourceObject = resource.newInstance();
				for (Attribute attribute : attrs) {
					ResourceLoader.setAttr(resourceObject, attribute.getName(), attribute.getValue());
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
		SAXReader reader = new SAXReader();
		try {
			Document doc = reader.read(file);
			Element root = doc.getRootElement();
			@SuppressWarnings("unchecked")
			List<Element> elements = root.elements();
			for (Element element : elements) {
				@SuppressWarnings("unchecked")
				List<Attribute> attrs = element.attributes();
				Map<String, String> data = new HashMap<>();
				for (Attribute attribute : attrs) {
					data.put(attribute.getName(), attribute.getValue());
				}
				datas.add(data);
			}
			ResourceLogger.loadSuccess(fileName);
		} catch (DocumentException e) {
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

	private XmlResource getAnnotation(Class<?> resource) {
		XmlResource resAnnotation = resource.getAnnotation(XmlResource.class);
		if (resAnnotation == null) {
			ResourceLogger.annotationError(resource.getSimpleName(), XmlResource.class.getSimpleName());
			return null;
		}
		if (resAnnotation.loader() != XmlResourceLoader.class) {
			ResourceLogger.annotationLoaderError(resource.getSimpleName(), XmlResourceLoader.class.getSimpleName());
			return null;
		}
		return resAnnotation;
	}

}
