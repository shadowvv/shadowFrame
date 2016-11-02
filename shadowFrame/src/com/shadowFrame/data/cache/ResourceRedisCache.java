package com.shadowFrame.data.cache;

/**
 * redis缓存管理
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ResourceRedisCache<T> extends BaseResourceCache<T> {

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
	public void removeResource(String resourceKey) {
		// TODO Auto-generated method stub
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
	public boolean update(String resourceKey, T resource) {
		// TODO Auto-generated method stub
		return false;
	}

}
