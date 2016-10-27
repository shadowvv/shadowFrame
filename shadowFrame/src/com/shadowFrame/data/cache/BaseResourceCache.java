package com.shadowFrame.data.cache;

public abstract class BaseResourceCache<T> implements IResourceCache<T> {

	private int cacheNum;
	private long cacheExpireTime;
	private boolean autoload;
	private ICacheIO<T> io;

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
	public void setAutoload(boolean autoload, ICacheIO<T> loader) {
		this.autoload = autoload;
		this.io = loader;
	}

	@Override
	public boolean isAutoload() {
		return autoload;
	}

	@Override
	public T loadResource(String resourceKey) {
		T resource = io.loadResource(resourceKey);
		if (resource == null) {
			return null;
		}
		addResource(resourceKey, resource);
		return resource;
	}

	@Override
	public boolean update(String resourcekey) {
		T resource = io.loadResource(resourcekey);
		if (resource == null) {
			return false;
		}
		return update(resourcekey, resource);
	}

	@Override
	public boolean save(T resource) {
		return io.saveResource(resource);
	}
}
