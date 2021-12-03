package com.shadowFrame.cache;

import com.shadowFrame.cache.base.ICache;
import com.shadowFrame.cache.base.ICondition;

import java.util.Map;

/**
 * 资源缓存
 *
 * @author Shadow
 * @version 1.0.0
 */
public class LocalCache<K, T> implements ICache<K, T> {

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

    @Override
    public void putIfAbsent(K key, T value) {

    }

    @Override
    public void removeAll(Iterable<K> keys) {

    }

    @Override
    public void remove(ICondition<T> condition) {

    }

    @Override
    public boolean contain(K key) {
        return false;
    }

    @Override
    public boolean containValue(T value) {
        return false;
    }

}
