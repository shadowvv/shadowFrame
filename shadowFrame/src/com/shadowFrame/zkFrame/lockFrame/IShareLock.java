package com.shadowFrame.zkFrame.lockFrame;

public interface IShareLock {

    void tryToGetReadLock(String lockName);

    void tryToGetWriteLock(String lockName);

    void onGetReadLock(String lockName);

    void onGetWriteLock(String lockName);

    void releaseReadLock(String lockName);

    void releaseWriteLock(String lockName);

}
