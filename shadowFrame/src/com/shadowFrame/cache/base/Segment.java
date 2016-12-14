package com.shadowFrame.cache.base;

import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;

/**
 * 缓存segment
 * 
 * @author Shadow
 * @version 1.0.0
 * @param <K> 
 * @param <V>
 */
@SuppressWarnings("serial")
class Segment<K, V> extends ReentrantLock {

	final BaseCache<K, V> map;

	volatile AtomicReferenceArray<ReferenceEntry<K, V>> table;

	volatile int count;
	int modCount;

	int capacity;

	private Segment(BaseCache<K, V> map, int capacity) {
		this.map = map;
		this.capacity = capacity;
		this.table = new AtomicReferenceArray<>(capacity);
	}

	public V get(K key) {
		int index = getFirst(key.hashCode());
		for (ReferenceEntry<K, V> next = table.get(index); next != null; next = next.getNext()) {
			if (key.equals(next.getKey())) {
				return next.get();
			}
		}
		return null;
	}

	public void putIfAbsent(K key, V value) {
		put(key, value, true);
	}

	public void put(K key, V value) {
		put(key, value, false);
	}

	private void put(K key, V value, boolean isOnlyAbsent) {
		try {
			lock();
			if (count == capacity) {
				appand();
			}
		} finally {
			unlock();
		}
	}

	public void remove(ICondition<V> condition) {

	}

	public void remove(K key) {
		try {
			lock();
		} finally {
			unlock();
		}
	}

	public void clear() {

	}

	public boolean containValue(V value) {
		return false;
	}

	public boolean contain(K key) {
		return false;
	}

	public long size() {
		return count;
	}

	private void appand() {

	}

	private int getFirst(int hashCode) {
		return hashCode & (table.length() - 1);
	}

	public static <K, V> Segment<K, V> newSegment(BaseCache<K, V> cache, int capacity) {
		return new Segment<K, V>(cache, capacity);
	}

}
