package com.sample.data;

import com.shadowFrame.data.annotation.ExcelResource;
import com.shadowFrame.data.annotation.ResourceId;
import com.shadowFrame.data.template.base.BaseTemplate;

@ExcelResource(fileName = "resource/excelSample.xls")
public class ExcelSample extends BaseTemplate {

	@ResourceId
	private String id;
	private int min;
	private int max;

	public ExcelSample() {

	}

	public String getId() {
		return id;
	}

	public float getMax() {
		return max;
	}

	public float getMin() {
		return min;
	}

	@Override
	public String toString() {
		return "id=" + id + " min=" + min + " max=" + max;
	}

	@Override
	public boolean invalid() {
		return false;
	}

	@Override
	public void assembly() {

	}
}
