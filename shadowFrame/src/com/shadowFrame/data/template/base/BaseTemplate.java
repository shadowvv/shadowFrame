package com.shadowFrame.data.template.base;

/**
 * 模版文件基类
 * @author Shadow
 * @version 1.0.0
 *
 */
public abstract class BaseTemplate {
	/**
	 * 模版数据检测
	 * @return 数据是否存在异常
	 */
	abstract public boolean invalid();
	/**
	 * 组装字段数据
	 */
	abstract public void assembly();
}
