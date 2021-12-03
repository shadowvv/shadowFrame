package com.shadowFrame.data.template.base;

import java.util.List;
import java.util.Map;

/**
 * 资源导出接口
 *
 * @author Shadow
 * @version 1.0.0
 */
public interface IResourceWriter {

    /**
     * 资源导出
     *
     * @param resourceName 导出资源名
     * @param targetDir    导出目录
     * @param datas        导出数据
     */
    public abstract void writeResource(String resourceName, String targetDir, List<Map<String, String>> datas);

}
