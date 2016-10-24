package com.shadowFrame.data.cache;

/**
 * 内存缓存管理器
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ResourceMemCache<T> implements IResourceCache<T> {

	@Override
	public void setCacheNum(int cacheNum) {
		// TODO Auto-generated method stub

	}

	@Override
	public int getCacheNum() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void setCacheExpireTime(long expireTime) {
		// TODO Auto-generated method stub

	}

	@Override
	public long getCacheExpireTime() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void setAutoload(boolean autoload, ICacheLoader loader) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean isAutoload() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public T getResource(String resourceKey) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean addResource(String resourceKey, T resource) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean removeResource(String resourceKey) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean loadResource(String resourceKey) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean clearResource() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(String resourcekey) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean update(String resourceKey, T resource) {
		// TODO Auto-generated method stub
		return false;
	}

}
