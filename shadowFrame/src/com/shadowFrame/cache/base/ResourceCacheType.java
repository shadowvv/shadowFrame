package com.shadowFrame.cache.base;

/**
 * 资源缓存类型
 * 
 * @author Shadow
 * @version 1.0.0
 */
public enum ResourceCacheType {
	/**
	 * 使用redis缓存
	 */
	REDIS,
	/**
	 * 使用内存缓存
	 */
	MEMORY,
}
