package com.shadowFrame.cache.base;

/**
 * 集合entry
 *
 * @param <K>
 * @param <V>
 * @author Shadow
 * @version 1.0.0
 */
class ReferenceEntry<K, V> {

    long accessTime;
    int hashCode;

    ValueReference<K> key;
    ValueReference<V> value;

    ReferenceEntry<K, V> next;

    private ReferenceEntry(K key, V value, int hashCode) {
        this.key = ValueReference.newValueReference(key);
        this.value = ValueReference.newValueReference(value);
        this.hashCode = hashCode;
        this.accessTime = System.currentTimeMillis();
    }

    /**
     * 获得键
     *
     * @return
     */
    public K getKey() {
        return key.get();
    }

    /**
     * 获得值
     *
     * @return
     */
    public V get() {
        this.accessTime = System.currentTimeMillis();
        return value.get();
    }

    /**
     * 获得访问时间
     *
     * @return
     */
    public long getAccessTime() {
        return accessTime;
    }

    public ReferenceEntry<K, V> getNext() {
        return next;
    }

    @Override
    public int hashCode() {
        return hashCode;
    }

    /**
     * 获得新键值
     *
     * @param key      键
     * @param value    值
     * @param hashCode
     * @return
     */
    public static <K, V> ReferenceEntry<K, V> createEntry(K key, V value, int hashCode) {
        return new ReferenceEntry<K, V>(key, value, hashCode);
    }
}
