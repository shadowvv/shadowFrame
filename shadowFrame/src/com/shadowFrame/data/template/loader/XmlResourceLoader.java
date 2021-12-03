package com.shadowFrame.data.template.loader;

import com.google.common.base.Strings;
import com.shadowFrame.data.template.base.ResourceFmt;
import com.shadowFrame.util.FileUtil;
import com.shadowFrame.util.PreconditionUtil;
import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * xml格式资源加载器
 * <p>
 * 文件样式 参考resource目录下xmlSmaple.xml
 *
 * @author Shadow
 * @version 1.0.0
 */
public class XmlResourceLoader extends BaseResourceLoader {

    @Override
    public <T> Map<String, T> loadResources(Class<T> resource, String fileName, String resourceId) {
        PreconditionUtil.checkArgument(resource != null, "argument resource is null");
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(fileName), "argument fileName is null or empty");
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(resourceId), "argument resourceId is null or empty");

        File file = checkFileFormat(resource, fileName, resourceId);
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
                    setAttr(resourceObject, attribute.getName(), attribute.getValue());
                    if (resourceId.equals(attribute.getName())) {
                        resourceIdValue = attribute.getValue();

                        PreconditionUtil.checkState(!resources.containsKey(resourceIdValue),
                                fileName + " contain duplicate id:" + resourceIdValue);

                        resources.put(resourceIdValue, resourceObject);
                    }
                }
            }
        } catch (Exception e) {
            ResourceLoaderLogger.loadResourceException(fileName, e.getMessage());
        }
        ResourceLoaderLogger.loadSuccess(resource.getSimpleName(), fileName);
        return resources;
    }

    @Override
    public <T> T loadResource(Class<T> resource, String fileName, String resourceId, String resourceIdValue) {
        PreconditionUtil.checkArgument(resource != null, "argument resource is null");
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(fileName), "argument fileName is null or empty");
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(resourceId), "argument resourceId is null or empty");
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(resourceIdValue),
                "argument resourceIdValue is null or empty");

        File file = checkFileFormat(resource, fileName, resourceId);
        SAXReader reader = new SAXReader();
        try {
            Document doc = reader.read(file);
            Element root = doc.getRootElement();
            @SuppressWarnings("unchecked")
            List<Element> elements = root.elements();
            for (Element element : elements) {
                Attribute idAttr = element.attribute(resourceId);
                if (idAttr == null) {
                    ResourceLoaderLogger.resourceNotContainIdValue(fileName, resourceIdValue);
                    return null;
                }
                if (!idAttr.getValue().equals(resourceIdValue)) {
                    continue;
                }
                @SuppressWarnings("unchecked")
                List<Attribute> attrs = element.attributes();
                T resourceObject = resource.newInstance();
                for (Attribute attribute : attrs) {
                    setAttr(resourceObject, attribute.getName(), attribute.getValue());
                }
                ResourceLoaderLogger.loadSuccess(resource.getSimpleName(), fileName, resourceIdValue);
                return resourceObject;
            }
        } catch (Exception e) {
            ResourceLoaderLogger.loadResourceException(fileName, e.getMessage());
        }
        ResourceLoaderLogger.resourceNotContainIdValue(fileName, resourceIdValue);
        return null;
    }

    @Override
    public List<Map<String, String>> loadResource(String fileName) {
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(fileName), "argument fileName is null or empty");

        File file = FileUtil.getExistFile(fileName);
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
            ResourceLoaderLogger.loadSuccess(fileName);
        } catch (DocumentException e) {
            ResourceLoaderLogger.loadResourceException(fileName, e.getMessage());
        }
        return datas;
    }

    @Override
    public ResourceFmt getResourceFmt() {
        return ResourceFmt.XML_RES;
    }

}
