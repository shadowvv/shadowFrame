package com.shadowFrame.zkFrame.lockFrame;

import com.shadowFrame.zkFrame.*;

public abstract class ZKShareLockService implements IShareLock {

    private String lockPath;

    private IZKClient client;

    private IZKWatcher watcher;

    private boolean isLockOwner = false;

    public ZKShareLockService(String lockPath) {
        this.client = new ZKDefaultClient();
        ZKDefaultClient shadowZKClient = (ZKDefaultClient) client;
        shadowZKClient.initConnect();

        this.lockPath = this.client.getZKRoot()+lockPath;
    }

    public ZKShareLockService(String ZKHost, String path, int sessionTimeout, String lockPath) {
        this.client = new ZKDefaultClient();
        this.client.initConnect(ZKHost,path,sessionTimeout);

        this.lockPath = this.client.getZKRoot()+lockPath;
    }

    public ZKShareLockService(IZKClient client, String lockPath) {
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
                String lockName = key.substring(0,key.lastIndexOf("/"));
                lockName = key.substring(key.lastIndexOf("/"));
                if (key.contains("-R-")){
                    onGetReadLock(lockName);
                    releaseReadLock(key);
                }
                if (key.contains("-W-")){
                    onGetWriteLock(lockName);
                    releaseWriteLock(key);
                }
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
        if (!client.checkExist(lockPath)){
            client.createNode(lockPath,"shareLock",ZKCreateNodeMode.PERSISTENT,false);
        }
    }

    @Override
    public void tryToGetReadLock(String lockName) {
        if (!client.checkExist(lockPath+"/"+lockName)){
            client.createNode(lockPath+"/"+lockName,lockName,ZKCreateNodeMode.PERSISTENT,false);
        }
        String nodeKey = client.createNode(lockPath+"/"+lockName+"/shareLock-R-","read",ZKCreateNodeMode.EPHEMERAL_SEQUENTIAL,false);
        if (nodeKey != null){
            long index = ZKUtils.getZKIndex(nodeKey);
            while (index > 0){
                String lastIndex = ZKUtils.buildZKIndex(index - 1);
                String watchNode = lockPath+"/"+lockName+"/shareLock-W-"+lastIndex;
                if (client.checkExist(watchNode)) {
                    client.checkExist(watchNode,watcher);
                    return;
                }else{
                    watchNode = lockPath+"/"+lockName+"/shareLock-R-"+lastIndex;
                    if (!client.checkExist(watchNode)) {
                        onGetReadLock(lockName);
                        releaseWriteLock(nodeKey);
                        return;
                    }
                }
                index = index - 1;
            }
        }
    }

    @Override
    public void tryToGetWriteLock(String lockName) {
        if (!client.checkExist(lockPath+"/"+lockName)){
            client.createNode(lockPath+"/"+lockName,lockName,ZKCreateNodeMode.PERSISTENT,false);
        }
        String nodeKey = client.createNode(lockPath+"/"+lockName+"/shareLock-W-","write",ZKCreateNodeMode.EPHEMERAL_SEQUENTIAL,false);
        if (nodeKey != null){
            long index = ZKUtils.getZKIndex(nodeKey);
            String lastIndex = ZKUtils.buildZKIndex(index - 1);
            String watchNode = lockPath+"/"+lockName+"/shareLock-W-"+lastIndex;
            if (client.checkExist(watchNode)) {
                client.checkExist(watchNode,watcher);
                return;
            }
            watchNode = lockPath+"/"+lockName+"/shareLock-R-"+lastIndex;
            if (client.checkExist(watchNode)) {
                client.checkExist(watchNode,watcher);
                return;
            }
            onGetReadLock(lockName);
            releaseWriteLock(nodeKey);
        }
    }

    @Override
    public void releaseReadLock(String nodeKey) {
        client.deleteNode(nodeKey);
    }

    @Override
    public void releaseWriteLock(String nodeKey) {
        client.deleteNode(nodeKey);
    }
}
