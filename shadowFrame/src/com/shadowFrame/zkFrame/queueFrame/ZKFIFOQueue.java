package com.shadowFrame.zkFrame.queueFrame;

import com.shadowFrame.zkFrame.*;

public abstract class ZKFIFOQueue<T> implements IQueue<T> {

    private String queuePath;
    private IZKClient client;

    public ZKFIFOQueue(String queuePath){
        this.client = new ZKDefaultClient();
        ZKDefaultClient shadowZKClient = (ZKDefaultClient) client;
        shadowZKClient.initConnect();
        this.queuePath = this.client.getZKRoot()+queuePath;
    }

    public ZKFIFOQueue(String ZKHost,String path,int sessionTimeout,String queuePath){
        this.client = new ZKDefaultClient();
        this.client.initConnect(ZKHost,path,sessionTimeout);
        this.queuePath = this.client.getZKRoot()+queuePath;
    }

    public ZKFIFOQueue(IZKClient client, String queuePath){
        this.client = client;
        this.queuePath = this.client.getZKRoot()+queuePath;
    }

    public boolean initService(){
        if(!this.client.checkExist(this.queuePath)){
            this.client.createNode(this.queuePath,"FIFOQueue", ZKCreateNodeMode.PERSISTENT,false);
        }
        this.client.addWatcher(this.queuePath, new IZKWatcher() {
            @Override
            public boolean onNodeChange(String key, byte[] data) {
                return false;
            }

            @Override
            public boolean onNodeDelete(String key) {
                return false;
            }

            @Override
            public boolean onNodeCreated(String key, byte[] data) {
                return false;
            }

            @Override
            public IZKClient getZKClient() {
                return null;
            }
        }, ZKAddWatchMode.PERSISTENT_RECURSIVE);
        return true;
    }
    @Override
    public boolean put(T element) {
        this.client.createNode(this.queuePath+"/q_",encode(element),ZKCreateNodeMode.PERSISTENT_SEQUENTIAL,false);
        return true;
    }

    @Override
    public T poll() {
        return null;
    }

}
