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
public abstract class BaseCache<K, V> implements ICache<K, V> {

	static final int MAX_CAPACITY = 1 << 30;
	static final int MAX_SEGMENTS = 1 << 16;
	static final int CONTAINS_VALUE_RETRIES = 3;
	static final int DRAIN_THRESHOLD = 0x3F;
	static final int DRAIN_MAX = 16;
	
	int segmentMask;
	int segmentShift;
	int concurrencyLevel;
	Segment<K, V>[] segments;
	
	public BaseCache() {
		
	}


	@Override
	public V get(K key) {
		return null;
	}

	@Override
	public Map<K, V> getAll(Iterable<K> keys) {
		return null;
	}

	@Override
	public void put(K key, V value) {

	}

	@Override
	public void putAll(Map<K, V> map) {

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
	public Map<K, V> clone() {
		return null;
	}

}
