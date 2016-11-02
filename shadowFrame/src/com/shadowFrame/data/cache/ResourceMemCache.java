package com.shadowFrame.data.cache;

import java.util.HashMap;
import java.util.Map;

/**
 * 内存缓存管理器
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ResourceMemCache<T> extends BaseResourceCache<T> {

	private Map<String, T> cacheMap;
	
	public ResourceMemCache() {
		cacheMap = new HashMap<>();
	}
	
	@Override
	public T getResource(String resourceKey) {
		T resource = cacheMap.get(resourceKey);
		if(resource == null && isAutoload()){
			resource = loadResource(resourceKey);
		}
		return resource;
	}

	@Override
	public boolean addResource(String resourceKey, T resource) {
		if(cacheMap.containsKey(resourceKey)){
			return false;
		}
		cacheMap.put(resourceKey, resource);
		return true;
	}

	@Override
	public void removeResource(String resourceKey) {
		cacheMap.remove(resourceKey);
	}

	@Override
	public boolean clearResource() {
		cacheMap.clear();
		return true;
	}

	@Override
	public boolean update() {
		for (String resourceKey : cacheMap.keySet()) {
			update(resourceKey);
		}
		return true;
	}

	@Override
	public boolean update(String resourceKey, T resource) {
		if(!cacheMap.containsKey(resourceKey)){
			return false;
		}
		cacheMap.put(resourceKey, resource);
		return true;
	}

}
