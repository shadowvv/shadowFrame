package com.shadowFrame.data.cache;

/**
 * 
 * @author Shadow
 * @version 1.0.0
 * @param <T>
 */
public interface ICacheLoader<T> {
	public T loadResource(String resourceKey);
}
