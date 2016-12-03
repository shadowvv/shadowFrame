package com.shadowFrame.cache.base;

import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.locks.ReentrantLock;

import com.shadowFrame.cache.LocalCache;

@SuppressWarnings("serial")
public class Segment<K, V> extends ReentrantLock {

	final LocalCache<K, V> map;

	volatile int count;
	volatile AtomicReferenceArray<ReferenceEntry<K, V>> table;

	int modCount;
	int threshold;

	public Segment(LocalCache<K, V> map) {
		this.map = map;
	}

}
