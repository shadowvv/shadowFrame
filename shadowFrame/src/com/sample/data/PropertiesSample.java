package com.sample.data;

import com.shadowFrame.data.annotation.PropertiesResource;
import com.shadowFrame.data.template.base.BaseTemplate;

@PropertiesResource(fileName = "resource/propertiesSample.cfg")
public class PropertiesSample extends BaseTemplate {

	private int min;
	private int max;

	public PropertiesSample() {

	}

	public int getMax() {
		return max;
	}

	public int getMin() {
		return min;
	}
	
	@Override
	public String toString() {
		return "min="+min+" max="+max;
	}

	@Override
	public boolean invalid() {
		return false;
	}

	@Override
	public void assembly() {
		
	}
}
