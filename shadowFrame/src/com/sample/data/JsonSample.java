package com.sample.data;

import com.shadowFrame.data.annotation.JsonResource;
import com.shadowFrame.data.annotation.ResourceId;
import com.shadowFrame.data.template.base.BaseTemplate;

@JsonResource(fileName = "resource/jsonSample.json")
public class JsonSample extends BaseTemplate {
	
	@ResourceId
	private String id;
	private int min;
	private int max;

	public JsonSample() {

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
	public boolean invalid() {
		return false;
	}

	@Override
	public void assembly() {
		
	}
}
