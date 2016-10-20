package com.sample.data;

import com.shadowFrame.data.template.loader.ResourceLoader;

public class LoaderSample {

	public static void main(String[] args) {
		System.out.println("csv:" + ResourceLoader.getInstance().loadTemplate(CsvSample.class));
		System.out.println("xml:" + ResourceLoader.getInstance().loadTemplate(XmlSample.class));
		System.out.println("json:" + ResourceLoader.getInstance().loadTemplate(JsonSample.class));
		System.out.println("properties:" + ResourceLoader.getInstance().loadTemplate(PropertiesSample.class));
		System.out.println("Excel:" + ResourceLoader.getInstance().loadTemplate(ExcelSample.class));
	}
}
