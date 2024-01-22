package com.shadowFrame.zkFrame.lockFrame;

import com.shadowFrame.zkFrame.*;

public class ZKExclusiveLockService implements IExclusiveLock {

    private String lockPath;

    private IZKClient client;

    private IZKWatcher watcher;

    private boolean isLockOwner = false;

    public ZKExclusiveLockService(String lockPath) {
        this.client = new ZKDefaultClient();
        ZKDefaultClient shadowZKClient = (ZKDefaultClient) client;
        shadowZKClient.initConnect();

        this.lockPath = this.client.getZKRoot()+lockPath;
    }

    public ZKExclusiveLockService(String ZKHost, String path, int sessionTimeout, String lockPath) {
        this.client = new ZKDefaultClient();
        this.client.initConnect(ZKHost,path,sessionTimeout);

        this.lockPath = this.client.getZKRoot()+lockPath;
    }

    public ZKExclusiveLockService(IZKClient client, String lockPath) {
        this.client = client;
        this.lockPath = this.client.getZKRoot()+lockPath;
    }

    public void initService(){
        this.watcher = new IZKWatcher() {
            @Override
            public boolean onNodeChange(String key, byte[] data) {
                return false;
            }

            @Override
            public boolean onNodeDelete(String key) {
                onOtherReleaseLock();
                return true;
            }

            @Override
            public boolean onNodeCreated(String key, byte[] data) {
                return false;
            }

            @Override
            public IZKClient getZKClient() {
                return client;
            }
        };
    }

    @Override
    public boolean tryToGetLock() {
        String nodeKey = this.client.createNode(this.lockPath,"/exclusiveLock", ZKCreateNodeMode.EPHEMERAL,false);
        if (nodeKey == null){
            this.client.addWatcher(this.lockPath,this.watcher, ZKAddWatchMode.ONCE);
        }else{
            this.isLockOwner = true;
        }
        return this.isLockOwner;
    }

    @Override
    public boolean releaseLock() {
        return this.client.deleteNode(this.lockPath);
    }

    @Override
    public boolean onOtherReleaseLock() {
        return false;
    }

    public boolean isLockOwner() {
        return isLockOwner;
    }

    public void start() {
        Thread exclusiveLockThread = new Thread(new Runnable() {
            @Override
            public void run() {
                while (true){

                }
            }
        }, "ZKExclusiveLockThread");
        exclusiveLockThread.start();
    }

    public static void main(String[] args) throws InterruptedException {
        ZKExclusiveLockService service = new ZKExclusiveLockService("/exclusiveLock");
        service.initService();
        service.tryToGetLock();
        service.start();

        Thread.sleep(10000);

        service.client.modifyNodeData(service.lockPath, "/exclusiveLock1");
    }

}
