package com.shadowFrame.zkFrame.lockFrame;

public interface IExclusiveLock {

    boolean tryToGetLock();

    boolean releaseLock();

    boolean onOtherReleaseLock();

}
