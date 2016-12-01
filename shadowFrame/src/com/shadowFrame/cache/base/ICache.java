package com.shadowFrame.cache.base;

import java.util.Map;

/**
 * 资源缓存接口
 * 
 * @author Shadow
 * @version 1.0.0
 */
public interface ICache<K, V> {

	/**
	 * 获得资源
	 * 
	 * @param key
	 *            资源键值
	 * @return
	 */
	public V get(K key);

	/**
	 * 批量获得资源
	 * 
	 * @param keys
	 * @return
	 */
	public Map<K, V> getAll(Iterable<K> keys);

	/**
	 * 添加资源
	 * 
	 * @param key
	 *            资源键值
	 * @param value
	 *            资源
	 * @return
	 */
	public void put(K key, V value);

	/**
	 * 批量添加资源
	 * 
	 * @param map
	 */
	public void putAll(Map<K, V> map);

	/**
	 * 移除资源
	 * 
	 * @param resourceKey
	 *            资源键值
	 * @return
	 */
	public void remove(K key);

	/**
	 * 清空缓存
	 * 
	 * @return
	 */
	public void clear();

	/**
	 * 缓存数量
	 * 
	 * @return
	 */
	public long size();

	/**
	 * 缓存克隆
	 * 
	 * @return
	 */
	public Map<K, V> clone();
}
