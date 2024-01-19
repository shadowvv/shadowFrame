package com.sample.zkFrame.lockFrame;

import com.shadowFrame.zkFrame.lockFrame.ZKExclusiveLockService;

public class ZKExclusiveLockServiceSample {

    public static void main(String[] args) {
        ZKExclusiveLockService service = new ZKExclusiveLockService("/exclusiveLock");
        service.initService();
        service.tryToGetLock();
        service.start();
    }

}
