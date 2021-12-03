package com.shadowFrame.data.template.loader;

import com.google.common.base.Strings;
import com.shadowFrame.data.template.base.ResourceFmt;
import com.shadowFrame.util.PreconditionUtil;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * csv格式资源加载器
 * <p>
 * 文件首行为字段名,第二行开始为数据.空白字段为空
 * <p>
 * eg: <br>
 * segment1,segment2,segment3 <br>
 * 1,,3
 * <p>
 * 文件样式参考resource目录下csvSmaple.csv
 *
 * @author Shadow
 * @version 1.0.0
 */
public class CsvResourceLoader extends BaseResourceLoader {

    static String CSV_SEPERATOR = ",";

    @Override
    public <T> Map<String, T> loadResources(Class<T> resource, String fileName, String resourceId) {
        PreconditionUtil.checkArgument(resource != null, "argument resource is null");
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(fileName), "argument fileName is null or empty");
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(resourceId), "argument resourceId is null or empty");

        Map<String, T> resources = new HashMap<>();
        try {
            String resourceIdValue = null;
            @SuppressWarnings("resource")
            BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(fileName), "UTF-8"));
            String attrString = reader.readLine();

            PreconditionUtil.checkState(attrString != null, fileName + " is not contain segment data");

            String[] attrNames = attrString.split(CSV_SEPERATOR);
            int elementIndex = 1;
            for (; ; ) {
                String attrValueString = reader.readLine();
                if (attrValueString == null) {
                    break;
                }
                String[] attrValues = attrValueString.split(CSV_SEPERATOR);

                PreconditionUtil.checkState(attrNames.length == attrValues.length, fileName + "'s " + elementIndex + "th elemnt attribute is not match with segment");

                T resourceObject = resource.newInstance();
                int index = 0;
                for (String name : attrNames) {
                    setAttr(resourceObject, name, attrValues[index]);
                    if (resourceId.equals(name)) {
                        resourceIdValue = attrValues[index];

                        PreconditionUtil.checkState(!resources.containsKey(resourceIdValue),
                                fileName + " contain duplicate id:" + resourceIdValue);

                        resources.put(resourceIdValue, resourceObject);
                    }
                    index++;
                }
                elementIndex++;
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
        try {
            @SuppressWarnings("resource")
            BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "UTF-8"));
            String attrString = reader.readLine();

            PreconditionUtil.checkState(attrString != null, fileName + " is not contain segment data");

            String[] attrNames = attrString.split(CSV_SEPERATOR);
            int idIndex = -1;
            for (int i = 0; i < attrNames.length; i++) {
                if (attrNames[i].equals(resourceId)) {
                    idIndex = i;
                    break;
                }
            }

            PreconditionUtil.checkState(idIndex != -1, resource.getSimpleName() + " class is not contain segment " + resourceId);

            int elementIndex = 0;
            for (; ; ) {
                elementIndex++;
                String attrValueString = reader.readLine();
                if (attrValueString == null) {
                    break;
                }
                String[] attrValues = attrValueString.split(CSV_SEPERATOR);
                if (!attrValues[idIndex].equals(resourceIdValue)) {
                    continue;
                }

                PreconditionUtil.checkState(attrNames.length == attrValues.length, fileName + "'s " + elementIndex + "th elemnt attribute is not match with segment");

                T resourceObject = resource.newInstance();
                int index = 0;
                for (String name : attrNames) {
                    setAttr(resourceObject, name, attrValues[index]);
                    index++;
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

        List<Map<String, String>> datas = new ArrayList<>();
        try {
            @SuppressWarnings("resource")
            BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(fileName), "UTF-8"));
            String attrString = reader.readLine();

            PreconditionUtil.checkState(attrString != null, fileName + " is not contain segment data");

            String[] attrNames = attrString.split(CSV_SEPERATOR);
            int elementIndex = 1;
            for (; ; ) {
                String attrValueString = reader.readLine();
                if (attrValueString == null) {
                    break;
                }
                String[] attrValues = attrValueString.split(CSV_SEPERATOR);

                PreconditionUtil.checkState(attrNames.length == attrValues.length, fileName + "'s " + elementIndex + "th elemnt attribute is not match with segment");

                int index = 0;
                Map<String, String> data = new HashMap<>();
                for (String name : attrNames) {
                    data.put(name, attrValues[index]);
                    index++;
                }
                datas.add(data);
                elementIndex++;
            }
            ResourceLoaderLogger.loadSuccess(fileName);
            return datas;
        } catch (Exception e) {
            ResourceLoaderLogger.loadResourceException(fileName, e.getMessage());
        }
        return datas;
    }

    @Override
    public ResourceFmt getResourceFmt() {
        return ResourceFmt.CSV_RES;
    }

}
