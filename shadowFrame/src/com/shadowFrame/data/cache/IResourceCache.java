package com.shadowFrame.data.cache;

/**
 * 资源缓存接口
 * 
 * @author Shadow
 * @version 1.0.0
 */
public interface IResourceCache<T> {

	/**
	 * 设置缓存数量,-1为不限制
	 * 
	 * @param cacheNum
	 */
	public void setCacheNum(int cacheNum);

	/**
	 * 获得缓存数量,-1为不限制
	 * 
	 * @return
	 */
	public int getCacheNum();

	/**
	 * 设置缓存过期时间,-1为不会过期
	 * 
	 * @param expireTime
	 */
	public void setCacheExpireTime(long expireTime);

	/**
	 * 获得缓存过期时间,-1为不会过期
	 * 
	 * @return
	 */
	public long getCacheExpireTime();

	/**
	 * 设置自动加载
	 * 
	 * @param autoload
	 */
	public void setAutoload(boolean autoload, ICacheLoader<T> loader);

	/**
	 * 是否自动加载数据
	 * 
	 * @return
	 */
	public boolean isAutoload();

	/**
	 * 获得资源
	 * 
	 * @param resourceKey
	 *            资源键值
	 * @return
	 */
	public T getResource(String resourceKey);

	/**
	 * 添加资源
	 * 
	 * @param resourceKey
	 *            资源键值
	 * @param resource
	 *            资源
	 * @return
	 */
	public boolean addResource(String resourceKey, T resource);

	/**
	 * 移除资源
	 * 
	 * @param resourceKey
	 *            资源键值
	 * @return
	 */
	public boolean removeResource(String resourceKey);

	/**
	 * 使用自动加载器加载资源,如果自动加载关闭,则该方法无效
	 * 
	 * @param resourceKey
	 *            资源键值
	 * @return
	 */
	public boolean loadResource(String resourceKey);

	/**
	 * 清空缓存
	 * 
	 * @return
	 */
	public boolean clearResource();

	/**
	 * 使用自动加载器更新全部资源,如果自动加载关闭,则该方法无效
	 * 
	 * @return
	 */
	public boolean update();

	/**
	 * 使用自动加载器更新资源,如果自动加载关闭,则该方法无效
	 * 
	 * @param resourcekey
	 *            资源键值
	 * @return
	 */
	public boolean update(String resourcekey);

	/**
	 * 更新资源
	 * 
	 * @param resourceKey
	 *            资源键值
	 * @param resource
	 *            资源
	 * @return
	 */
	public boolean update(String resourceKey, T resource);
}
