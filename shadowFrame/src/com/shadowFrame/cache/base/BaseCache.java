package com.shadowFrame.cache.base;

import java.util.Map;

/**
 * 资源缓存管理基类
 * 
 * @author Shadow
 * @version 1.0.0
 * @param <T>
 *            资源映射类
 */
public abstract class BaseCache<K, T> implements ICache<K, T> {

	@Override
	public T get(K key) {
		return null;
	}

	@Override
	public Map<K, T> getAll(Iterable<K> keys) {
		return null;
	}

	@Override
	public void put(K key, T value) {

	}

	@Override
	public void putAll(Map<K, T> map) {

	}

	@Override
	public void remove(K key) {

	}

	@Override
	public void clear() {

	}

	@Override
	public long size() {
		return 0;
	}

	@Override
	public Map<K, T> clone() {
		return null;
	}

}
