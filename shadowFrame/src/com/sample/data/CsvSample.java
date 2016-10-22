package com.sample.data;

import com.shadowFrame.data.annotation.CsvResource;
import com.shadowFrame.data.annotation.ResourceId;
import com.shadowFrame.data.template.base.BaseTemplate;

/**
 * csv资源映射类例子
 * @author Shadow
 * @version 1.0.0
 */
@CsvResource(fileName = "resource/csvSample.csv")
public class CsvSample extends BaseTemplate {
	
	@ResourceId
	private String id;
	private int min;
	private int max;

	public CsvSample() {

	}

	public String getId() {
		return id;
	}

	public int getMax() {
		return max;
	}

	public int getMin() {
		return min;
	}
	
	@Override
	public String toString() {
		return "id="+id+" min="+min+" max="+max;
	}

	@Override
	public boolean invalid() {
		return false;
	}

	@Override
	public void assembly() {
		
	}
}
