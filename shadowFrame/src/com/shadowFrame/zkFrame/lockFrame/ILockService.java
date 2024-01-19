package com.shadowFrame.zkFrame.lockFrame;

public interface ILockService {

    boolean tryToGetLock();

    boolean releaseLock();

    boolean onOtherReleaseLock();

}
