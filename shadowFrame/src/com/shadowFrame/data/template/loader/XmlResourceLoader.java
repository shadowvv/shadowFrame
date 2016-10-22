package com.shadowFrame.data.template.loader;

import java.io.File;
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
	public <T> Map<String, T> loadResource(Class<T> resource, String fileName) {
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
			return null;
		}
		Map<String, T> resources = new HashMap<>();
		SAXReader reader = new SAXReader();
		try {
			Document doc = reader.read(file);
			Element root = doc.getRootElement();
			String keyAttrName = null;
			String keyAttrValue = null;
			@SuppressWarnings("unchecked")
			List<Element> elements = root.elements();
			for (Element element : elements) {
				@SuppressWarnings("unchecked")
				List<Attribute> attrs = element.attributes();
				T resourceObject = resource.newInstance();
				for (Attribute attribute : attrs) {
					ResourceLoader.setAttr(resourceObject, attribute.getName(), attribute.getValue());
					if (keyAttrName == null) {
						keyAttrName = ResourceLoader.getIdFieldName(resource, attribute.getName());
					}
					if(keyAttrName != null && keyAttrName.equals(attribute.getName())){
						keyAttrValue = attribute.getValue();
						if(resources.containsKey(keyAttrValue)){
							return null;
						}
						resources.put(keyAttrValue, resourceObject);
					}
				}
			}
		} catch (DocumentException | InstantiationException | IllegalAccessException e) {
			e.printStackTrace();
		}
		return resources;
	}

	@Override
	public <T> Map<String, T> loadResource(Class<T> resource) {
		XmlResource resAnnotation = resource.getAnnotation(XmlResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != XmlResourceLoader.class) {
			return null;
		}
		return loadResource(resource, resAnnotation.fileName());
	}

}
