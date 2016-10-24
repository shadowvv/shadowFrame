package com.shadowFrame.data.cache;

import java.util.List;

/**
 * 资源缓存接口
 * 
 * @author Shadow
 * @version 1.0.0
 */
public interface IResourceCache {

	public boolean isAutoload();

	public void setAutoload(boolean autoload);

	public boolean getResource(String resourceKey);

	public boolean loadResource(String resourceKey);

	public boolean addResource(String resourceKey, List<Object> resource);

	public boolean removeResource(String resourceKey);

	public boolean clearResource();

	public boolean update();

	public boolean update(String resourcekey);

	public boolean update(String resourceKey, List<Object> resource);
}
