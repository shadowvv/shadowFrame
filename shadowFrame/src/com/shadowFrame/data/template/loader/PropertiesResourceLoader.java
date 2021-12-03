package com.shadowFrame.data.template.loader;

import com.google.common.base.Strings;
import com.shadowFrame.data.annotation.ResourceFmtAnnotation;
import com.shadowFrame.data.template.base.ResourceFmt;
import com.shadowFrame.util.FileUtil;
import com.shadowFrame.util.PreconditionUtil;

import java.io.*;
import java.util.*;

/**
 * 属性资源加载器
 * <p>
 * 文件以#标识注释，以'\n'结束语句
 * <p>
 * eg: <br>
 * # 注释 <br>
 * serverId = 1
 * <p>
 * 文件样式 参考resource目录下propertiesSmaple.cfg
 *
 * @author Shadow
 * @version 1.0.0
 */
public class PropertiesResourceLoader extends BaseResourceLoader {

    public <T> Map<String, T> loadResources(Class<T> resource) {
        PreconditionUtil.checkArgument(resource != null, "argument resource is null");

        ResourceFmtAnnotation resAnnotation = getFmtAnnotation(resource, getResourceFmt());
        return loadResourcesFromFile(resource, resAnnotation.fileName());
    }

    public <T> Map<String, T> loadResourcesFromFile(Class<T> resource, String fileName) {
        PreconditionUtil.checkArgument(resource != null, "argument resource is null");
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(fileName), "argument fileName is null or empty");

        File file = FileUtil.getExistFile(fileName);
        try {
            ResourceBundle bundle = new PropertyResourceBundle(
                    new InputStreamReader(new BufferedInputStream(new FileInputStream(file)), "UTF-8"));
            if (bundle != null) {
                Enumeration<String> keys = bundle.getKeys();
                T resourceObject = resource.newInstance();
                while (keys.hasMoreElements()) {
                    String key = (String) keys.nextElement().trim();
                    setAttr(resourceObject, key, bundle.getString(key).trim());
                }
                Map<String, T> map = new HashMap<>();
                map.put(resource.getName(), resourceObject);
                ResourceLoaderLogger.loadSuccess(resource.getSimpleName(), fileName);
                return map;
            }
        } catch (Exception e) {
            ResourceLoaderLogger.loadResourceException(fileName, e.getMessage());
        }
        return null;
    }

    /**
     * 针对与属性资源该方法无效,返回null
     */
    @Override
    @Deprecated
    public <T> Map<String, T> loadResourcesWithResourceId(Class<T> resource, String resourceId) {
        return null;
    }

    /**
     * 针对与属性资源该方法无效,返回null
     */
    @Override
    @Deprecated
    public <T> Map<String, T> loadResources(Class<T> resource, String fileName, String resourceId) {
        return null;
    }

    /**
     * 针对与属性资源该方法无效,返回null
     */
    @Override
    @Deprecated
    public <T> T loadResource(Class<T> resource, String resourceKey) {
        return null;
    }

    /**
     * 针对与属性资源该方法无效,返回null
     */
    @Override
    @Deprecated
    public <T> T loadResourceFromFile(Class<T> resource, String fileName, String resourceKey) {
        return null;
    }

    /**
     * 针对与属性资源该方法无效,返回null
     */
    @Override
    @Deprecated
    public <T> T loadResourceWithResourceId(Class<T> resource, String resourceId, String resourceIdValue) {
        return null;
    }

    /**
     * 针对与属性资源该方法无效,返回null
     */
    @Override
    @Deprecated
    public <T> T loadResource(Class<T> resource, String fileName, String resourceKeyName, String resourceKey) {
        return null;
    }

    @Override
    public List<Map<String, String>> loadResource(String fileName) {
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(fileName), "argument fileName is null or empty");

        File file = FileUtil.getExistFile(fileName);
        List<Map<String, String>> datas = new ArrayList<>();
        try {
            ResourceBundle bundle = new PropertyResourceBundle(
                    new InputStreamReader(new BufferedInputStream(new FileInputStream(file)), "UTF-8"));
            if (bundle != null) {
                Enumeration<String> keys = bundle.getKeys();
                Map<String, String> data = new HashMap<>();
                while (keys.hasMoreElements()) {
                    String key = (String) keys.nextElement().trim();
                    data.put(key, bundle.getString(key).trim());
                }
                datas.add(data);
                return datas;
            }
        } catch (IOException e) {
            ResourceLoaderLogger.loadResourceException(fileName, e.getMessage());
        }
        ResourceLoaderLogger.loadSuccess(fileName);
        return null;
    }

    @Override
    public ResourceFmt getResourceFmt() {
        return ResourceFmt.PROPERTIES_RES;
    }

}
