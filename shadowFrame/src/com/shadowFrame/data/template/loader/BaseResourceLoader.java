package com.shadowFrame.data.template.loader;

import com.shadowFrame.data.annotation.ResourceFmtAnnotation;
import com.shadowFrame.data.annotation.ResourceId;
import com.shadowFrame.data.template.base.IResourceLoader;
import com.shadowFrame.data.template.base.ResourceFmt;
import com.shadowFrame.log.ShadowLogger;
import com.shadowFrame.util.ClassUtil;
import com.shadowFrame.util.FileUtil;
import com.shadowFrame.util.PreconditionUtil;

import java.io.File;
import java.lang.reflect.Field;
import java.util.Map;

/**
 * 资源加载器基类
 *
 * @author Shadow
 * @version 1.0.0
 */
public abstract class BaseResourceLoader implements IResourceLoader {

    @Override
    public <T> Map<String, T> loadResources(Class<T> resource) {
        return loadResourcesWithResourceId(resource, getIdFieldName(resource));
    }

    @Override
    public <T> Map<String, T> loadResourcesFromFile(Class<T> resource, String fileName) {
        return loadResources(resource, fileName, getIdFieldName(resource));
    }

    @Override
    public <T> Map<String, T> loadResourcesWithResourceId(Class<T> resource, String resourceId) {
        ResourceFmtAnnotation resAnnotation = getFmtAnnotation(resource, getResourceFmt());
        return loadResources(resource, resAnnotation.fileName(), resourceId);
    }

    @Override
    public <T> T loadResource(Class<T> resource, String resourceIdValue) {
        return loadResourceWithResourceId(resource, getIdFieldName(resource), resourceIdValue);
    }

    @Override
    public <T> T loadResourceFromFile(Class<T> resource, String fileName, String resourceIdValue) {
        return loadResource(resource, fileName, getIdFieldName(resource), resourceIdValue);
    }

    @Override
    public <T> T loadResourceWithResourceId(Class<T> resource, String resourceId, String resourceIdValue) {
        ResourceFmtAnnotation resAnnotation = getFmtAnnotation(resource, getResourceFmt());
        return loadResource(resource, resAnnotation.fileName(), resourceId, resourceIdValue);
    }

    /**
     * 获得资源映射类注释
     *
     * @param resource 资源映射类
     * @param fmt      资源类型
     * @return
     */
    protected ResourceFmtAnnotation getFmtAnnotation(Class<?> resource, ResourceFmt fmt) {
        ResourceFmtAnnotation resAnnotation = resource.getAnnotation(ResourceFmtAnnotation.class);

        PreconditionUtil.checkState(resAnnotation != null,
                resource.getSimpleName() + " class is not annotated by" + ResourceFmtAnnotation.class.getSimpleName());
        PreconditionUtil.checkState(resAnnotation.format().equals(fmt),
                resource.getSimpleName() + " class fmt is not " + fmt.toString());

        return resAnnotation;
    }

    /**
     * 检测文件格式
     *
     * @param resource   资源映射类
     * @param fileName   文件
     * @param resourceId 资源Id字段名
     * @return
     */
    protected File checkFileFormat(Class<?> resource, String fileName, String resourceId) {
        File file = FileUtil.getExistFile(fileName);
        PreconditionUtil.checkState(ClassUtil.isContainField(resource, resourceId),
                resource.getSimpleName() + " class is not contain segment " + resourceId);

        return file;
    }

    /**
     * 赋值映射对象字段
     *
     * @param instance  对象
     * @param attrName  字段名
     * @param attrValue 字段值
     */
    protected void setAttr(Object instance, String attrName, String attrValue) {
        Field field = ClassUtil.getClassField(instance.getClass(), attrName);
        if (field == null) {
            ShadowLogger.errorPrintln(instance.getClass().getSimpleName() + " is not contained field " + attrName);
            return;
        }
        String type = field.getType().toString();
        field.setAccessible(true);
        try {
            if (type.indexOf("boolean") >= 0 || type.indexOf("Boolean") >= 0) {
                if ("0".equals(attrValue)) {
                    field.set(instance, false);
                } else if ("1".equals(attrValue)) {
                    field.set(instance, true);
                } else {
                    field.set(instance, Boolean.valueOf(attrValue));
                }
            } else if (type.indexOf("int") >= 0 || type.indexOf("Integer") >= 0) {
                field.set(instance, Integer.valueOf(attrValue));
            } else if (type.indexOf("long") >= 0 || type.indexOf("Long") >= 0) {
                field.set(instance, Long.valueOf(attrValue));
            } else if (type.indexOf("float") >= 0 || type.indexOf("Float") >= 0) {
                field.set(instance, Float.valueOf(attrValue));
            } else if (type.indexOf("double") >= 0 || type.indexOf("Double") >= 0) {
                field.set(instance, Double.valueOf(attrValue));
            } else if (type.indexOf("String") >= 0) {
                field.set(instance, attrValue);
            }
        } catch (Exception e) {
            ShadowLogger.exceptionPrintln(
                    instance.getClass().getSimpleName() + " set field " + attrName + " value catch exception");
        }
    }

    /**
     * 获得资源映射类中id字段
     *
     * @param resource 映射类
     * @return
     */
    protected String getIdFieldName(Class<?> resource) {
        ResourceId id = null;
        String idName = null;
        Field[] fields = resource.getDeclaredFields();
        for (Field attr : fields) {
            id = attr.getAnnotation(ResourceId.class);
            if (id != null) {
                idName = attr.getName();
                break;
            }
        }

        PreconditionUtil.checkState(idName != null,
                resource.getSimpleName() + " has not field annotated by " + ResourceId.class.getSimpleName());
        return idName;
    }

    /**
     * 获得加载资源的类型
     *
     * @return
     */
    public abstract ResourceFmt getResourceFmt();
}
