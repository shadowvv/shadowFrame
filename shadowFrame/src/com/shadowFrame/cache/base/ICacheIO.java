package com.shadowFrame.cache.base;

/**
 * 缓存IO接口
 * 
 * @author Shadow
 * @version 1.0.0
 * @param <T>
 *            资源
 */
public interface ICacheIO<T> {

	/**
	 * 加载资源
	 * 
	 * @param resourceKey
	 *            资源键
	 * @return 资源
	 */
	public T loadResource(String resourceKey);

	/**
	 * 保存资源
	 * 
	 * @param resource
	 *            资源
	 * @return
	 */
	public boolean saveResource(T resource);
}
