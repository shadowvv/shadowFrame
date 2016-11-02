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
		XmlResource resAnnotation = resource.getAnnotation(XmlResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != XmlResourceLoader.class) {
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
		XmlResource resAnnotation = resource.getAnnotation(XmlResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != XmlResourceLoader.class) {
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
							return null;
						}
						resources.put(resourceIdValue, resourceObject);
					}
				}
			}
		} catch (DocumentException | InstantiationException | IllegalAccessException e) {
			e.printStackTrace();
		}
		return resources;
	}

	@Override
	public <T> T loadResource(Class<T> resource, String resourceIdValue) {
		XmlResource resAnnotation = resource.getAnnotation(XmlResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != XmlResourceLoader.class) {
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
		XmlResource resAnnotation = resource.getAnnotation(XmlResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != XmlResourceLoader.class) {
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
		SAXReader reader = new SAXReader();
		try {
			Document doc = reader.read(file);
			Element root = doc.getRootElement();
			@SuppressWarnings("unchecked")
			List<Element> elements = root.elements();
			for (Element element : elements) {
				Attribute idAttr = element.attribute(resourceId);
				if (idAttr == null) {
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
				return resourceObject;
			}
		} catch (DocumentException | InstantiationException | IllegalAccessException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Map<String, String>> loadResource(String fileName) {
		if (!fileName.endsWith(".xml")) {
			return null;
		}
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
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
		} catch (DocumentException e) {
			e.printStackTrace();
		}
		return datas;
	}

}
