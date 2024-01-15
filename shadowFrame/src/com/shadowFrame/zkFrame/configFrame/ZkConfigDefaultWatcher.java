package com.shadowFrame.zkFrame.configFrame;

import com.shadowFrame.log.ShadowLogger;
import com.shadowFrame.zkFrame.IZKClient;
import com.shadowFrame.zkFrame.ZKDefaultClient;
import org.apache.zookeeper.AddWatchMode;
import org.apache.zookeeper.server.ZooKeeperThread;

public abstract class ZkConfigDefaultWatcher implements IZKConfigWatcher {

    private String configPath;

    private IZKClient client;

    public ZkConfigDefaultWatcher(String configPath){
        this.client = new ZKDefaultClient();
        this.configPath = configPath;
        ZKDefaultClient shadowZKClient = (ZKDefaultClient) client;
        shadowZKClient.initConnect();
        registerWatcher(client,this.client.getZKRoot()+configPath,this);
    }

    public ZkConfigDefaultWatcher(String ZKHost,String path,int sessionTimeout,String configPath){
        this.client = new ZKDefaultClient();
        this.configPath = configPath;
        this.client.initConnect(ZKHost,path,sessionTimeout);
        registerWatcher(client,this.client.getZKRoot()+configPath,this);
    }

    public ZkConfigDefaultWatcher(IZKClient client,String configPath){
        this.client = client;
        this.configPath = configPath;
        registerWatcher(client,this.client.getZKRoot()+configPath,this);
    }

    @Override
    public IZKClient getZKClient(){
        return this.client;
    }

    @Override
    public void startWatch() {
        Thread watchThread = new Thread(new Runnable() {
                    @Override
                    public void run() {
                        while (true){

                        }
                    }
                }, "ZKWatchThread");
        watchThread.start();
    }

    @Override
    public String getConfigPath() {
        return this.configPath;
    }

    public static void main(String[] args) {
        ZkConfigDefaultWatcher watcher = new ZkConfigDefaultWatcher("/config") {
            @Override
            public boolean onConfigChange(String key,String value) {
                ShadowLogger.logPrintln("onConfigChange",key,value);
                return false;
            }

            @Override
            public boolean onConfigDelete(String key) {
                ShadowLogger.logPrintln("onConfigDelete",key);
                return false;
            }

            @Override
            public boolean onConfigCreated(String key,String value) {
                ShadowLogger.logPrintln("onConfigCreated",key,value);
                return false;
            }
        };
        watcher.startWatch();
    }
}
