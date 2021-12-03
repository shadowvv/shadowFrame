package com.shadowFrame.data.template.loader;

import com.shadowFrame.log.ShadowLogger;

/**
 * 资源日志
 *
 * @author Shadow
 * @version 1.0.0
 */
class ResourceLoaderLogger {

    private ResourceLoaderLogger() {

    }

    /**
     * 加载资源异常
     *
     * @param fileName     资源名
     * @param exceptionMsg 异常
     */
    public static void loadResourceException(String fileName, String exceptionMsg) {
        ShadowLogger.exceptionPrintln("load " + fileName + " catch exception " + exceptionMsg);
    }

    /**
     * 资源不包括对应元素
     *
     * @param fileName        资源名
     * @param resourceIdValue id值
     */
    public static void resourceNotContainIdValue(String fileName, String resourceIdValue) {
        ShadowLogger.logPrintln(fileName + " is not contain id = " + resourceIdValue + " element");
    }

    /**
     * 加载资源成功
     *
     * @param fileName 资源名
     */
    public static void loadSuccess(String fileName) {
        ShadowLogger.logPrintln("load " + fileName + " load success");
    }

    /**
     * 加载资源成功
     *
     * @param resourceClass 资源映射类
     * @param fileName      资源名
     */
    public static void loadSuccess(String resourceClass, String fileName) {
        ShadowLogger.logPrintln("load " + resourceClass + " from " + fileName + " success");
    }

    /**
     * 加载对应元素资源成功
     *
     * @param resourceClass   资源映射类
     * @param fileName        资源名
     * @param resourceIdValue 资源Id值
     */
    public static void loadSuccess(String resourceClass, String fileName, String resourceIdValue) {
        ShadowLogger.logPrintln("load " + resourceClass + " from" + fileName + " id = " + resourceIdValue + " success");
    }

}
