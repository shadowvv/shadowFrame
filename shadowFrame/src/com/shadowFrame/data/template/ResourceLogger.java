package com.shadowFrame.data.template;

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

	public static void annotationError(String resource, String annotation) {
		ShadowLogger.errorPrintln(resource + " resource is not annotated by" + annotation);
	}

	public static void loaderError(String resource, String loaderName) {
		ShadowLogger.errorPrintln(resource + " annotation's loader is not " + loaderName);
	}

	public static void resourceNotExist(String resource, String fileName) {

	}

	public static void resourceIdIsNull(String resource) {

	}

	public static void resourceClassNotContainResourceId(String resource, String resourceIdName) {

	}

	public static void resourceNotContainSegment(String resource, String fileName) {

	}

	public static void elementAttributeNotMatchSegment(String resource, String fileName, int index) {

	}

	public static void resourceContainDeplicateId(String resource, String fileName, String resourceIdName) {

	}

	public static void loadResourceException(String resource, String fileName, String exceptionMsg) {

	}

	public static void loadIdValueIsNull(String resource) {

	}

	public static void resourceNotContainIdValue(String resource, String fileName, String resourceIdValue) {

	}

	public static void loadSuccess(String resource, String fileName) {

	}

	public static void loadSuccess(String resource, String fileName, String resourceIdValue) {

	}

}
