package com.shadowFrame.data.cache;

/**
 * 资源缓存管理类
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ResourceCache<T> implements IResourceCache<T> {

	private IResourceCache<T> cache;
	private ResourceCacheType cacheType;
	private ResourceCacheStrategy cacheStrategy;

	/**
	 * 默认构造器。缓存类型为{@link ResourceCacheType#MEMORY},缓存策略为{@link ResourceCacheStrategy#COMMON}
	 */
	public ResourceCache() {
		this(ResourceCacheType.MEMORY, ResourceCacheStrategy.COMMON);
	}

	/**
	 * 
	 * @param cacheType
	 *            缓存类型
	 */
	public ResourceCache(ResourceCacheType cacheType) {
		this(cacheType, ResourceCacheStrategy.COMMON);
	}

	/**
	 * 
	 * @param cacheStrategy
	 *            缓存策略
	 */
	public ResourceCache(ResourceCacheStrategy cacheStrategy) {
		this(ResourceCacheType.MEMORY, cacheStrategy);
	}

	/**
	 * 
	 * @param cacheType
	 *            缓存类型
	 * @param cacheStrategy
	 *            缓存策略
	 */
	public ResourceCache(ResourceCacheType cacheType, ResourceCacheStrategy cacheStrategy) {
		this.cacheType = cacheType;
		setCacheType(cacheType);
	}

	/**
	 * 设置缓存类型
	 * 
	 * @param cacheType
	 */
	public void setCacheType(ResourceCacheType cacheType) {
		this.cacheType = cacheType;
		initCacheLoader(cacheType);
	}

	/**
	 * 
	 * @return 缓存类型
	 */
	public ResourceCacheType getCacheType() {
		return cacheType;
	}

	/**
	 * 设置缓存策略
	 * 
	 * @param cacheStrategy
	 */
	public void setCacheStrategy(ResourceCacheStrategy cacheStrategy) {
		this.cacheStrategy = cacheStrategy;
	}

	/**
	 * 
	 * @return 缓存策略
	 */
	public ResourceCacheStrategy getCacheStrategy() {
		return cacheStrategy;
	}

	private void initCacheLoader(ResourceCacheType cacheType) {
		switch (cacheType) {
		case REDIS:
			cache = new ResourceRedisCache<>();
			break;
		case MEMORY:
			cache = new ResourceMemCache<>();
			break;
		default:
			return;
		}
	}

	@Override
	public void setCacheNum(int cacheNum) {
		cache.setCacheNum(cacheNum);
	}

	@Override
	public int getCacheNum() {
		return cache.getCacheNum();
	}

	@Override
	public void setCacheExpireTime(long expireTime) {
		cache.setCacheExpireTime(expireTime);
	}

	@Override
	public long getCacheExpireTime() {
		return cache.getCacheExpireTime();
	}

	@Override
	public void setAutoload(boolean autoload, ICacheIO<T> loader) {
		cache.setAutoload(autoload, loader);
	}

	@Override
	public boolean isAutoload() {
		return cache.isAutoload();
	}

	@Override
	public T getResource(String resourceKey) {
		return cache.getResource(resourceKey);
	}

	@Override
	public boolean addResource(String resourceKey, T resource) {
		return cache.addResource(resourceKey, resource);
	}

	@Override
	public boolean removeResource(String resourceKey) {
		return cache.removeResource(resourceKey);
	}

	@Override
	public T loadResource(String resourceKey) {
		return cache.loadResource(resourceKey);
	}

	@Override
	public boolean clearResource() {
		return cache.clearResource();
	}

	@Override
	public boolean update() {
		return cache.update();
	}

	@Override
	public boolean update(String resourcekey) {
		return cache.update(resourcekey);
	}

	@Override
	public boolean update(String resourceKey, T resource) {
		return cache.update(resourceKey, resource);
	}

	@Override
	public boolean save(T resource) {
		return cache.save(resource);
	}

}
