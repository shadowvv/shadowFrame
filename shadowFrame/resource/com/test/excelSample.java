package com.test;

import com.shadowFrame.data.template.base.BaseTemplate;
import com.shadowFrame.data.annotation.ResourceId;
import com.shadowFrame.data.annotation.CsvResource

@CsvResource(fileName = "./resource/excelSample.csv")
public class ExcelSample extends BaseTemplate {
	/**
	 * id
	 */
	@ResourceId
	private String id;
	/**
	 * 最小值
	 */
	private int min;
	/**
	 * 最大值
	 */
	private int max;

	/**
	 * 最小值
	 */
	public int getMin(){
		return min;
	}

	/**
	 * 最大值
	 */
	public int getMax(){
		return max;
	}

	/**
	 * id
	 */
	public int getId(){
		return id;
	}

}