package com.sample.data.resourceLoad;

import com.shadowFrame.data.template.loader.CsvResourceLoader;
import com.shadowFrame.data.template.loader.ExcelResourceLoader;
import com.shadowFrame.data.template.loader.JsonResourceLoader;
import com.shadowFrame.data.template.loader.PropertiesResourceLoader;
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
		System.out.println("csv:" + new CsvResourceLoader().loadResource("./shadowFrame/resource/csvSample.csv"));
		System.out.println("xml:" + new XmlResourceLoader().loadResource("./shadowFrame/resource/xmlSample.xml"));
		System.out.println("json:" + new JsonResourceLoader().loadResource("./shadowFrame/resource/jsonSample.json"));
		System.out.println("Excel:" + new ExcelResourceLoader().loadResource("./shadowFrame/resource/excelSample.xlsx"));
		System.out.println("properties:" + new PropertiesResourceLoader().loadResource("./shadowFrame/resource/propertiesSample.cfg"));
		System.out.println("========================================");
		System.out.println("csv:" + ResourceLoader.loadTemplate(CsvSample.class));
		System.out.println("xml:" + ResourceLoader.loadTemplate(XmlSample.class));
		System.out.println("json:" + ResourceLoader.loadTemplate(JsonSample.class));
		System.out.println("properties:" + ResourceLoader.loadTemplate(PropertiesSample.class));
		System.out.println("Excel:" + ResourceLoader.loadTemplate(ExcelSample.class));
		System.out.println("========================================");
		System.out.println("csv:" + new CsvResourceLoader().loadResource(CsvSample.class, "1"));
		System.out.println("xml:" + new XmlResourceLoader().loadResource(XmlSample.class, "1"));
		System.out.println("json:" + new JsonResourceLoader().loadResource(JsonSample.class, "1"));
		System.out.println("Excel:" + new ExcelResourceLoader().loadResource(ExcelSample.class, "1"));
	}
}
