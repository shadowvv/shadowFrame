package com.shadowFrame.cache;

import java.util.Map;

import com.shadowFrame.cache.base.ICache;
import com.shadowFrame.cache.base.ICacheIO;

public class LoadingCache<K, V> implements ICache<K, V> {

	ICacheIO<V> io;

	public LoadingCache(ICacheIO<V> io) {
		this.io = io;
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
