package com.shadowFrame.data.template;

import com.shadowFrame.data.template.base.ResourceFmt;
import com.shadowFrame.log.ShadowLogger;

/**
 * 资源日志
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ResourceLogger {

	private ResourceLogger() {

	}

	/**
	 * 资源映射类没有被对应annotation注释
	 * 
	 * @param resourceClass
	 *            资源映射类
	 * @param annotation
	 *            注释
	 */
	public static void annotationError(String resourceClass, String annotation) {
		ShadowLogger.errorPrintln(resourceClass + " class is not annotated by" + annotation);
	}

	/**
	 * 资源注释中加载器错误
	 * 
	 * @param resourceClass
	 *            资源映射类
	 * @param ResourceFMT
	 *            加载器
	 */
	public static void annotationReosurceFmtError(String resourceClass, ResourceFmt ResourceFMT) {
		ShadowLogger.errorPrintln(resourceClass + " class fmt is not " + ResourceFMT.toString());
	}

	/**
	 * 资源映射类没有id字段
	 * 
	 * @param resourceClass
	 *            资源映射类
	 * @param resourceIdName
	 *            资源id字段名
	 */
	public static void resourceClassNotContainResourceId(String resourceClass, String resourceIdName) {
		ShadowLogger.errorPrintln(resourceClass + " class is not contain segment " + resourceIdName);
	}

	/**
	 * 资源没有包含字段列
	 * 
	 * @param fileName
	 *            资源名
	 */
	public static void resourceNotContainSegments(String fileName) {
		ShadowLogger.errorPrintln(fileName + " is not contain segment data");
	}

	/**
	 * 资源数据与数据字段不符
	 * 
	 * @param fileName
	 *            资源名
	 * @param index
	 *            资源索引
	 */
	public static void resourceElementNotMatchSegment(String fileName, int index) {
		ShadowLogger.errorPrintln(fileName + "'s " + index + "th elemnt attribute is not match with segment");
	}

	/**
	 * 资源数据包含重复id
	 * 
	 * @param fileName
	 *            资源名
	 * @param resourceIdValue
	 *            重复id值
	 */
	public static void resourceContainDeplicateId(String fileName, String resourceIdValue) {
		ShadowLogger.errorPrintln(fileName + " contain duplicate id:" + resourceIdValue);
	}

	/**
	 * 加载资源异常
	 * 
	 * @param fileName
	 *            资源名
	 * @param exceptionMsg
	 *            异常
	 */
	public static void loadResourceException(String fileName, String exceptionMsg) {
		ShadowLogger.exceptionPrintln("load " + fileName + " catch exception " + exceptionMsg);
	}

	/**
	 * 资源不包括对应元素
	 * 
	 * @param fileName
	 *            资源名
	 * @param resourceIdValue
	 *            id值
	 */
	public static void resourceNotContainIdValue(String fileName, String resourceIdValue) {
		ShadowLogger.logPrintln(fileName + " is not contain id = " + resourceIdValue + " element");
	}

	/**
	 * 加载资源成功
	 * 
	 * @param fileName
	 *            资源名
	 */
	public static void loadSuccess(String fileName) {
		ShadowLogger.logPrintln("load " + fileName + " load success");
	}

	/**
	 * 加载资源成功
	 * 
	 * @param resourceClass
	 *            资源映射类
	 * @param fileName
	 *            资源名
	 */
	public static void loadSuccess(String resourceClass, String fileName) {
		ShadowLogger.logPrintln("load " + resourceClass + " from " + fileName + " success");
	}

	/**
	 * 加载对应元素资源成功
	 * 
	 * @param resourceClass
	 *            资源映射类
	 * @param fileName
	 *            资源名
	 * @param resourceIdValue
	 *            资源Id值
	 */
	public static void loadSuccess(String resourceClass, String fileName, String resourceIdValue) {
		ShadowLogger.logPrintln("load " + resourceClass + " from" + fileName + " id = " + resourceIdValue + " success");
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
	 * @param fileName
	 *            资源名
	 * @param exceptionMsg
	 *            异常
	 */
	public static void writeResourceException(String fileName, String exceptionMsg) {
		ShadowLogger.exceptionPrintln("write " + fileName + " catch exception " + exceptionMsg);
	}
}
