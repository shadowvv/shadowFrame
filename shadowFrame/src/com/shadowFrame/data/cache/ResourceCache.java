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

	public ResourceCache(ResourceCacheType cacheType) {
		this.cacheType = cacheType;
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

	public ResourceCacheType getCacheType() {
		return cacheType;
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
	public void setAutoload(boolean autoload, ICacheLoader loader) {
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
	public boolean loadResource(String resourceKey) {
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

}
