package com.shadowFrame.zkFrame.barrierFrame;

import com.shadowFrame.zkFrame.*;

public abstract class ZKBarrier {

    private String barrierPath;
    private IZKClient client;
    private int barrierThresholdNum;

    public ZKBarrier(String barrierPath, int barrierThresholdNum){
        this.client = new ZKDefaultClient();
        ZKDefaultClient shadowZKClient = (ZKDefaultClient) client;
        shadowZKClient.initConnect();
        this.barrierPath = this.client.getZKRoot()+barrierPath;

        this.barrierThresholdNum = barrierThresholdNum;
    }

    public ZKBarrier(String ZKHost, String path, int sessionTimeout, String barrierPath, int barrierThresholdNum){
        this.client = new ZKDefaultClient();
        this.client.initConnect(ZKHost,path,sessionTimeout);
        this.barrierPath = this.client.getZKRoot()+barrierPath;

        this.barrierThresholdNum = barrierThresholdNum;
    }

    public ZKBarrier(IZKClient client, String barrierPath, int barrierThresholdNum){
        this.client = client;
        this.barrierPath = this.client.getZKRoot()+barrierPath;

        this.barrierThresholdNum = barrierThresholdNum;
    }

    private void Init(){
        this.client.addWatcher(this.barrierPath, new IZKWatcher() {
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
                if (client.getChildNum(barrierPath) == barrierThresholdNum){
                    onBarrierOpen();
                }
                return true;
            }

            @Override
            public IZKClient getZKClient() {
                return client;
            }
        }, ZKAddWatchMode.PERSISTENT_RECURSIVE);
        if (client.getChildNum(barrierPath) == barrierThresholdNum){
            onBarrierOpen();
        }
    }

    public boolean addBarrierThreshold(){
        return client.createNode(barrierPath+"/barrier_","barrier", ZKCreateNodeMode.EPHEMERAL,false) != null;
    }

    abstract public void onBarrierOpen();
}
