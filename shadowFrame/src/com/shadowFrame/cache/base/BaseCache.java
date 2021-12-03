package com.shadowFrame.cache.base;

import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

/**
 * 资源缓存管理基类
 *
 * @param <T> 资源映射类
 * @author Shadow
 * @version 1.0.0
 */
public class BaseCache<K, V> implements ICache<K, V> {

    static final int MAX_CAPACITY = 1 << 30;
    static final int MAX_SEGMENTS = 1 << 16;
    static final int CONTAINS_VALUE_RETRIES = 3;
    static final int DRAIN_THRESHOLD = 0x3F;
    static final int DRAIN_MAX = 16;

    int segmentMask;
    int segmentShift;
    int concurrencyLevel;
    Segment<K, V>[] segments;

    public BaseCache(CacheBuilder builder) {

    }

    @Override
    public V get(K key) {
        return getSegment(key).get(key);
    }

    @Override
    public Map<K, V> getAll(Iterable<K> keys) {
        Map<K, V> map = new HashMap<>();
        for (K key : keys) {
            V value = get(key);
            if (value != null) {
                map.put(key, get(key));
            }
        }
        return map;
    }

    @Override
    public void put(K key, V value) {
        getSegment(key).put(key, value);
    }

    @Override
    public void putIfAbsent(K key, V value) {
        getSegment(key).putIfAbsent(key, value);
    }

    @Override
    public void putAll(Map<K, V> map) {
        for (Entry<K, V> entry : map.entrySet()) {
            getSegment(entry.getKey()).put(entry.getKey(), entry.getValue());
        }
    }

    @Override
    public void remove(K key) {
        getSegment(key).remove(key);
    }

    @Override
    public void removeAll(Iterable<K> keys) {
        for (K key : keys) {
            getSegment(key).remove(key);
        }
    }

    @Override
    public void remove(ICondition<V> condition) {
        for (Segment<K, V> segment : segments) {
            segment.remove(condition);
        }
    }

    @Override
    public void clear() {
        for (Segment<K, V> segment : segments) {
            segment.clear();
        }
    }

    @Override
    public boolean contain(K key) {
        boolean isContain = false;
        for (Segment<K, V> segment : segments) {
            isContain = segment.contain(key);
            if (isContain) {
                break;
            }
        }
        return isContain;
    }

    @Override
    public boolean containValue(V value) {
        boolean isContain = false;
        for (Segment<K, V> segment : segments) {
            isContain = segment.containValue(value);
            if (isContain) {
                break;
            }
        }
        return isContain;
    }

    @Override
    public long size() {
        long size = 0;
        for (Segment<K, V> segment : segments) {
            size += segment.size();
        }
        return size;
    }

    private Segment<K, V> getSegment(K key) {
        return segments[key.hashCode()];
    }

}
