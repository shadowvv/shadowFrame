package com.shadowFrame.cache.base;

public interface IValueRemoveListener<K, V> {

	public void onValueRemove(K key, V value);

}
