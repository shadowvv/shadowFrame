package com.shadowFrame.data.template.loader;

import com.google.common.base.Strings;
import com.shadowFrame.data.template.base.ResourceFmt;
import com.shadowFrame.util.FileUtil;
import com.shadowFrame.util.PreconditionUtil;
import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Json格式资源加载器,json文件根节点必须为root
 * <p>
 * 文件样式 参考resource目录下jsonSmaple.json
 *
 * @author Shadow
 * @version 1.0.0
 */
public class JsonResourceLoader extends BaseResourceLoader {

    static String JSON_ROOT = "root";

    @Override
    public <T> Map<String, T> loadResources(Class<T> resource, String fileName, String resourceId) {
        PreconditionUtil.checkArgument(resource != null, "argument resource is null");
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(fileName), "argument fileName is null or empty");
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(resourceId), "argument resourceId is null or empty");

        File file = checkFileFormat(resource, fileName, resourceId);
        Map<String, T> resources = new HashMap<>();
        InputStream inputStream;
        try {
            inputStream = new FileInputStream(file);
            StringBuilder stringBuilder = new StringBuilder();
            int byteRead = 0;
            while ((byteRead = inputStream.read()) != -1) {
                stringBuilder.append((char) byteRead);
            }
            inputStream.close();
            String data = stringBuilder.toString();
            JSONObject jsonO = new JSONObject(data);
            JSONArray jsonA = jsonO.getJSONArray(JSON_ROOT);
            String resourceIdValue = null;
            for (int i = 0; i < jsonA.length(); i++) {
                JSONObject element = jsonA.getJSONObject(i);
                String[] key = JSONObject.getNames(element);
                T resourceObject = resource.newInstance();
                for (String attribute : key) {
                    setAttr(resourceObject, attribute, element.getString(attribute));
                    if (resourceId.equals(attribute)) {
                        resourceIdValue = element.getString(attribute);

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
        InputStream inputStream;
        try {
            inputStream = new FileInputStream(file);
            StringBuilder stringBuilder = new StringBuilder();
            int byteRead = 0;
            while ((byteRead = inputStream.read()) != -1) {
                stringBuilder.append((char) byteRead);
            }
            inputStream.close();
            String data = stringBuilder.toString();
            JSONObject jsonO = new JSONObject(data);
            JSONArray jsonA = jsonO.getJSONArray(JSON_ROOT);
            for (int i = 0; i < jsonA.length(); i++) {
                JSONObject element = jsonA.getJSONObject(i);
                String keyValue = element.getString(resourceId);
                if (keyValue == null) {
                    ResourceLoaderLogger.resourceNotContainIdValue(fileName, resourceIdValue);
                    return null;
                }
                if (!keyValue.equals(resourceIdValue)) {
                    continue;
                }
                String[] key = JSONObject.getNames(element);
                T resourceObject = resource.newInstance();
                for (String attribute : key) {
                    setAttr(resourceObject, attribute, element.getString(attribute));
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
        InputStream inputStream;
        List<Map<String, String>> datas = new ArrayList<>();
        try {
            inputStream = new FileInputStream(file);
            StringBuilder stringBuilder = new StringBuilder();
            int byteRead = 0;
            while ((byteRead = inputStream.read()) != -1) {
                stringBuilder.append((char) byteRead);
            }
            inputStream.close();
            String stringData = stringBuilder.toString();
            JSONObject jsonO = new JSONObject(stringData);
            JSONArray jsonA = jsonO.getJSONArray(JSON_ROOT);
            for (int i = 0; i < jsonA.length(); i++) {
                JSONObject element = jsonA.getJSONObject(i);
                String[] key = JSONObject.getNames(element);
                Map<String, String> data = new HashMap<>();
                for (String attribute : key) {
                    data.put(attribute, element.getString(attribute));
                }
                datas.add(data);
            }
        } catch (IOException e) {
            ResourceLoaderLogger.loadResourceException(fileName, e.getMessage());
        }
        ResourceLoaderLogger.loadSuccess(fileName);
        return datas;
    }

    @Override
    public ResourceFmt getResourceFmt() {
        return ResourceFmt.JSON_RES;
    }

}
