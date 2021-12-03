package com.shadowFrame.cache.base;

/**
 * 缓存IO接口
 *
 * @param <T> 资源
 * @author Shadow
 * @version 1.0.0
 */
public interface ICacheIO<T> {

    /**
     * 加载资源
     *
     * @param resourceKey 资源键
     * @return 资源
     */
    public T load(String resourceKey);

    /**
     * 保存资源
     *
     * @param resource 资源
     * @return
     */
    public void save(T resource);
}
