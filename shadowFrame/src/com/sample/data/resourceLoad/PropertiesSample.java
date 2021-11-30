package com.sample.data.resourceLoad;

import com.shadowFrame.data.annotation.ResourceFmtAnnotation;
import com.shadowFrame.data.template.base.BaseTemplate;
import com.shadowFrame.data.template.base.ResourceFmt;

/**
 * 属性资源映射类例子
 * 
 * @author Shadow
 * @version 1.0.0
 */
@ResourceFmtAnnotation(fileName = "./shadowFrame/resource/propertiesSample.cfg", format = ResourceFmt.PROPERTIES_RES)
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
		return "min=" + min + " max=" + max;
	}

	@Override
	public boolean invalid() {
		return false;
	}

	@Override
	public void assembly() {

	}
}
