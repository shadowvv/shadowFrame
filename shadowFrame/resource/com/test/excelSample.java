package com.test;

import com.shadowFrame.data.template.base.BaseTemplate;
import com.shadowFrame.data.annotation.ResourceId;
import com.shadowFrame.data.annotation.CsvResource

@CsvResource(fileName = "./resource\\excelSample.csv")
public class ExcelSample extends BaseTemplate {
	/**
	 * id
	 */
	@ResourceId
	private String id;
	private int min;
	private int max;

	public int getMin(){
		return min;
	}

	public int getMax(){
		return max;
	}

	public int getId(){
		return id;
	}

}