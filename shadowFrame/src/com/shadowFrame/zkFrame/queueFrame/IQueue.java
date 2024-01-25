package com.shadowFrame.zkFrame.queueFrame;

public interface IQueue<T> {

    boolean put(T element);

    T poll();

    T decode(byte[] data);

    byte[] encode(T element);

}
