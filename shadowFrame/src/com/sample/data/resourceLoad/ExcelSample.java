package com.sample.data.resourceLoad;

import com.shadowFrame.data.annotation.ExcelResource;
import com.shadowFrame.data.annotation.ResourceId;
import com.shadowFrame.data.template.base.BaseTemplate;

/**
 * excel资源映射类例子
 * @author Shadow
 * @version 1.0.0
 */
@ExcelResource(fileName = "resource/excelSample.xlsx")
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
