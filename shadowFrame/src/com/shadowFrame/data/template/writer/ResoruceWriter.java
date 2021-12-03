package com.shadowFrame.data.template.writer;

import com.shadowFrame.data.template.base.IResourceWriter;
import com.shadowFrame.data.template.base.ResourceFmt;

import java.util.List;
import java.util.Map;

/**
 * 资源导出类
 *
 * @author Shadow
 * @version 1.0.0
 */
public class ResoruceWriter implements IResourceWriter {

    private IResourceWriter writer;

    public ResoruceWriter(ResourceFmt fmt) {
        writer = fmt.getWriter();
    }

    @Override
    public void writeResource(String resourceName, String targetDir, List<Map<String, String>> datas) {
        writer.writeResource(resourceName, targetDir, datas);
    }

}
