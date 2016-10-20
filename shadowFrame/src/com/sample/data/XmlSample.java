package com.sample.data;

import com.shadowFrame.data.annotation.ResourceId;
import com.shadowFrame.data.annotation.XmlResource;
import com.shadowFrame.data.template.base.BaseTemplate;

@XmlResource(fileName = "resource/xmlSample.xml")
public class XmlSample extends BaseTemplate{
	
	@ResourceId
	private String id;
	private int min;
	private int max;

	public XmlSample() {

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
