package com.shadowFrame.data.cache;

import java.util.List;

/**
 * 资源缓存管理类
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ResourceCache implements IResourceCache {

	private IResourceCache cache;
	private ResourceCacheType cacheType;

	private static ResourceCache instance;

	private ResourceCache() {

	}

	public static ResourceCache getInstance() {
		if (instance == null) {
			instance = new ResourceCache();
		}
		return instance;
	}

	public boolean init(ResourceCacheType cacheType) {
		this.cacheType = cacheType;
		switch (cacheType) {
		case REDIS:
			cache = new ResourceRedisCache();
			break;
		case MEMORY:
			cache = new ResourceMemCache();
			break;
		default:
			return false;
		}
		return true;
	}

	public ResourceCacheType getCacheType() {
		return cacheType;
	}

	@Override
	public boolean isAutoload() {
		return cache.isAutoload();
	}

	@Override
	public void setAutoload(boolean autoload) {
		cache.setAutoload(autoload);
	}

	@Override
	public boolean getResource(String resourceKey) {
		return cache.getResource(resourceKey);
	}

	@Override
	public boolean loadResource(String resourceKey) {
		return cache.loadResource(resourceKey);
	}

	@Override
	public boolean addResource(String resourceKey, List<Object> resource) {
		return cache.addResource(resourceKey, resource);
	}

	@Override
	public boolean removeResource(String resourceKey) {
		return cache.removeResource(resourceKey);
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
	public boolean update(String resourceKey, List<Object> resource) {
		return cache.update(resourceKey, resource);
	}

}
