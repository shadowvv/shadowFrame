package com.shadowFrame.data.annotation;

import java.lang.annotation.*;

/**
 * 标记资源Id字段
 *
 * @author Shadow
 * @version 1.0.0
 */
@Documented
@Target(ElementType.FIELD)
@Retention(RetentionPolicy.RUNTIME)
public @interface ResourceId {

}
