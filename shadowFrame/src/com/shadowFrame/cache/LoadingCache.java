package com.shadowFrame.cache;

import com.shadowFrame.cache.base.ICache;
import com.shadowFrame.cache.base.ICacheIO;
import com.shadowFrame.cache.base.ICondition;

import java.util.Map;

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

    @Override
    public void putIfAbsent(K key, V value) {

    }

    @Override
    public void removeAll(Iterable<K> keys) {

    }

    @Override
    public void remove(ICondition<V> condition) {

    }

    @Override
    public boolean contain(K key) {
        return false;
    }

    @Override
    public boolean containValue(V value) {
        return false;
    }

}
