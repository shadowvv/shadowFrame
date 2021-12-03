package com.shadowFrame.cache.base;

/**
 * 值引用
 *
 * @param <V>
 * @author Shadow
 * @version 1.0.0
 */
class ValueReference<V> {

    V value;

    private ValueReference(V value) {
        this.value = value;
    }

    /**
     * 获得值
     *
     * @return
     */
    public V get() {
        return value;
    }

    /**
     * 获得新引用
     *
     * @param value 值
     * @return
     */
    public static <V> ValueReference<V> newValueReference(V value) {
        return new ValueReference<V>(value);
    }

}
