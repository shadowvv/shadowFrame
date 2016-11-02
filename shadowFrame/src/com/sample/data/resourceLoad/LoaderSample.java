package com.sample.data.resourceLoad;

import com.shadowFrame.data.template.loader.CsvResourceLoader;
import com.shadowFrame.data.template.loader.ExcelResourceLoader;
import com.shadowFrame.data.template.loader.JsonResourceLoader;
import com.shadowFrame.data.template.loader.ResourceLoader;
import com.shadowFrame.data.template.loader.XmlResourceLoader;

/**
 * 资源加载例子
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class LoaderSample {

	private LoaderSample() {

	}

	public static void main(String[] args) {
		System.out.println("csv:" + ResourceLoader.getInstance().loadTemplate(CsvSample.class));
		System.out.println("xml:" + ResourceLoader.getInstance().loadTemplate(XmlSample.class));
		System.out.println("json:" + ResourceLoader.getInstance().loadTemplate(JsonSample.class));
		System.out.println("properties:" + ResourceLoader.getInstance().loadTemplate(PropertiesSample.class));
		System.out.println("Excel:" + ResourceLoader.getInstance().loadTemplate(ExcelSample.class));

		System.out.println("csv:" + new CsvResourceLoader().loadResource(CsvSample.class, "1"));
		System.out.println("xml:" + new XmlResourceLoader().loadResource(XmlSample.class, "1"));
		System.out.println("json:" + new JsonResourceLoader().loadResource(JsonSample.class, "1"));
		System.out.println("Excel:" + new ExcelResourceLoader().loadResource(ExcelSample.class, "1"));
	}
}
