package com.sample.data;

import com.shadowFrame.data.template.loader.ResourceLoader;

public class LoaderSample {

	public static void main(String[] args) {
		System.out.println(ResourceLoader.getInstance().loadTemplate(new CsvSample()));
		System.out.println(ResourceLoader.getInstance().loadTemplate(new XmlSample()));
		System.out.println(ResourceLoader.getInstance().loadTemplate(new JsonSample()));
		System.out.println(ResourceLoader.getInstance().loadTemplate(new PropertiesSample()));
	}
}
