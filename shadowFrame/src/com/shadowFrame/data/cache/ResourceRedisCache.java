package com.shadowFrame.data.cache;

import java.util.List;

/**
 * redis缓存管理
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ResourceRedisCache implements IResourceCache {

	@Override
	public boolean isAutoload() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void setAutoload(boolean autoload) {
		// TODO Auto-generated method stub

	}

	@Override
	public boolean getResource(String resourceKey) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean loadResource(String resourceKey) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean addResource(String resourceKey, List<Object> resource) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean removeResource(String resourceKey) {
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
	public boolean update(String resourceKey, List<Object> resource) {
		// TODO Auto-generated method stub
		return false;
	}

}
