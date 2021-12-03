package com.shadowFrame.data.template.writer;

import com.google.common.base.Strings;
import com.shadowFrame.data.template.base.IResourceWriter;
import com.shadowFrame.util.PreconditionUtil;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.*;

/**
 * csv格式资源导出器
 * <p>
 * 文件样式参考resource目录下csvSmaple.csv
 *
 * @author Shadow
 * @version 1.0.0
 */
public class CsvResourceWriter implements IResourceWriter {

    @Override
    public void writeResource(String resourceName, String targetDir, List<Map<String, String>> datas) {
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(resourceName), "argument resourceName is null or empty");
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(targetDir), "argument targetDir is null or empty");
        PreconditionUtil.checkArgument(datas != null, "argument datas is null");

        String name = targetDir + File.separator + resourceName + ".csv";
        File file = new File(name);
        if (file.exists()) {
            file.delete();
        }
        file.getParentFile().mkdirs();
        try {
            file.createNewFile();
            FileOutputStream output = new FileOutputStream(file);
            output.write(getFileContent(datas).getBytes());
            output.flush();
            output.close();
            ResourceWriterLogger.writeSuccess(name);
        } catch (IOException e) {
            ResourceWriterLogger.writeResourceException(name, e.getMessage());
        }
    }

    private String getFileContent(List<Map<String, String>> datas) {
        StringBuilder content = new StringBuilder();
        Set<String> fieldName = new LinkedHashSet<>();
        for (Map<String, String> data : datas) {
            for (String field : data.keySet()) {
                fieldName.add(field);
            }
        }
        List<Map<String, String>> realDatas = new ArrayList<>();
        for (Map<String, String> data : datas) {
            Map<String, String> realData = new LinkedHashMap<>();
            for (String field : fieldName) {
                String value = data.get(field);
                if (value != null) {
                    realData.put(field, value);
                } else {
                    realData.put(field, "");
                }
            }
            realDatas.add(realData);
        }

        for (String field : fieldName) {
            content.append(field);
            content.append(",");
        }
        content.deleteCharAt(content.length() - 1);
        content.append("\n");
        for (Map<String, String> data : realDatas) {
            for (String field : fieldName) {
                content.append(data.get(field));
                content.append(",");
            }
            content.deleteCharAt(content.length() - 1);
            content.append("\n");
        }
        content.deleteCharAt(content.length() - 1);
        return content.toString();
    }

}
