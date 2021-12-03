package com.shadowFrame.data.template.writer;

import com.shadowFrame.log.ShadowLogger;

/**
 * 资源导出日志
 *
 * @author Shadow
 * @version 1.0.0
 */
class ResourceWriterLogger {

    private ResourceWriterLogger() {

    }

    /**
     * 导出资源成功
     *
     * @param fileName
     */
    public static void writeSuccess(String fileName) {
        ShadowLogger.logPrintln("write " + fileName + " success");
    }

    /**
     * 加载资源异常
     *
     * @param fileName     资源名
     * @param exceptionMsg 异常
     */
    public static void writeResourceException(String fileName, String exceptionMsg) {
        ShadowLogger.exceptionPrintln("write " + fileName + " catch exception " + exceptionMsg);
    }
}
