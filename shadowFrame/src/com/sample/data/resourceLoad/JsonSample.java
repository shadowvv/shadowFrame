package com.sample.data.resourceLoad;

import com.shadowFrame.data.annotation.JsonResource;
import com.shadowFrame.data.annotation.ResourceId;
import com.shadowFrame.data.template.base.BaseTemplate;

/**
 * json资源映射类例子
 * @author Shadow
 * @version 1.0.0
 */
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
