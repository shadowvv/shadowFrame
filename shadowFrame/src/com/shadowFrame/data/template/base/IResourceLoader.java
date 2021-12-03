package com.shadowFrame.data.template.base;

import com.shadowFrame.data.annotation.ResourceFmtAnnotation;
import com.shadowFrame.data.annotation.ResourceId;

import java.util.List;
import java.util.Map;

/**
 * 资源加载器接口
 *
 * @author Shadow
 * @version 1.0.0
 */
public interface IResourceLoader {

    /**
     * 加载资源
     * <p>
     * resource必须由对应的Annotation标记 eg:{@link ResourceFmtAnnotation}
     * <p>
     * 返回值:如果resource中有被{@link ResourceId}标记的字段，则key为该字段。如果没有key为resource类名,且只有一组数据
     *
     * @param resource 资源映射类
     * @return 资源map
     */
    public abstract <T> Map<String, T> loadResources(Class<T> resource);

    /**
     * 加载资源
     * <p>
     * 返回值:如果resource中有被{@link ResourceId}标记的字段，则key为该字段。如果没有key为resource类名,且只有一组数据<br>
     *
     * @param resource 资源映射类
     * @param fileName 资源名
     * @return 资源map
     */
    public abstract <T> Map<String, T> loadResourcesFromFile(Class<T> resource, String fileName);

    /**
     * 加载资源
     * <p>
     * resource必须由对应的Annotation标记 eg:{@link ResourceFmtAnnotation}
     *
     * @param resource   资源映射类
     * @param resourceId 资源键
     * @return 资源map
     */
    public abstract <T> Map<String, T> loadResourcesWithResourceId(Class<T> resource, String resourceId);

    /**
     * 加载资源
     *
     * @param resource   资源映射类
     * @param fileName   资源名
     * @param resourceId 资源Id名
     * @return 资源map
     */
    public abstract <T> Map<String, T> loadResources(Class<T> resource, String fileName, String resourceId);

    /**
     * 加载资源中特定key资源,返回第一个键值与resourceKey相同的资源
     * <p>
     * resource必须由对应的Annotation标记 eg:{@link ResourceFmtAnnotation}
     * <p>
     * 资源键由映射类中{@link ResourceId}标记
     *
     * @param resource        资源映射类
     * @param resourceIdValue 资源键值
     * @return 资源, 没找到返回null
     */
    public abstract <T> T loadResource(Class<T> resource, String resourceIdValue);

    /**
     * 加载资源中特定key资源,返回第一个键值与resourceKey相同的资源
     * <p>
     * 资源键由映射类中{@link ResourceId}标记
     *
     * @param resource        资源映射类
     * @param fileName        资源名
     * @param resourceIdValue 资源键值
     * @return 资源, 没找到返回null
     */
    public abstract <T> T loadResourceFromFile(Class<T> resource, String fileName, String resourceIdValue);

    /**
     * 加载资源中特定key资源,返回第一个键值与resourceKey相同的资源
     * <p>
     * resource必须由对应的Annotation标记 eg:{@link ResourceFmtAnnotation}
     *
     * @param resource        资源映射类
     * @param resourceId      资源键
     * @param resourceIdValue 资源键值
     * @return 资源, 没找到返回null
     */
    public abstract <T> T loadResourceWithResourceId(Class<T> resource, String resourceId, String resourceIdValue);

    /**
     * 加载资源中特定key资源,返回第一个键值与resourceKey相同的资源
     *
     * @param resource        资源映射类
     * @param fileName        资源名
     * @param resourceId      资源键
     * @param resourceIdValue 资源键值
     * @return 资源, 没找到返回null
     */
    public abstract <T> T loadResource(Class<T> resource, String fileName, String resourceId, String resourceIdValue);

    /**
     * 返回资源的数据
     *
     * @param fileName 文件名
     * @return 资源数据
     */
    public abstract List<Map<String, String>> loadResource(String fileName);

}
