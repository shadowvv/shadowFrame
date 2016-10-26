package com.shadowFrame.data.cache;

public abstract class BaseResourceCache<T> implements IResourceCache<T> {

	private int cacheNum;
	private long cacheExpireTime;
	private boolean autoload;
	private ICacheLoader<T> loader;

	@Override
	public void setCacheNum(int cacheNum) {
		this.cacheNum = cacheNum;
	}

	@Override
	public int getCacheNum() {
		return cacheNum;
	}

	@Override
	public void setCacheExpireTime(long expireTime) {
		this.cacheExpireTime = expireTime;
	}

	@Override
	public long getCacheExpireTime() {
		return cacheExpireTime;
	}

	@Override
	public void setAutoload(boolean autoload, ICacheLoader<T> loader) {
		this.autoload = autoload;
		this.loader = loader;
	}

	@Override
	public boolean isAutoload() {
		return autoload;
	}

	@Override
	public boolean loadResource(String resourceKey) {
		T resource = loader.loadResource(resourceKey);
		if (resource == null) {
			return false;
		}
		return addResource(resourceKey, resource);
	}

	@Override
	public boolean update(String resourcekey) {
		T resource = loader.loadResource(resourcekey);
		if (resource == null) {
			return false;
		}
		return update(resourcekey, resource);
	}

}
