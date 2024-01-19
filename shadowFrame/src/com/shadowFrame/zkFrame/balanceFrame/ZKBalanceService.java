package com.shadowFrame.zkFrame.balanceFrame;

import com.shadowFrame.log.ShadowLogger;
import com.shadowFrame.util.EmptyStringException;
import com.shadowFrame.zkFrame.IZKClient;
import com.shadowFrame.zkFrame.IZKWatcher;
import com.shadowFrame.zkFrame.ZKAddWatchMode;
import com.shadowFrame.zkFrame.ZKDefaultClient;
import org.apache.zookeeper.common.StringUtils;

import java.util.HashMap;
import java.util.Map;

public class ZKBalanceService<T> {

    private String balancePath;
    private Map<Integer,T> balanceInfoMap;
    private IZKClient client;
    private IBalanceStrategy<T> balanceStrategy;

    public ZKBalanceService(String balancePath){
        this.client = new ZKDefaultClient();
        ZKDefaultClient shadowZKClient = (ZKDefaultClient) client;
        shadowZKClient.initConnect();
        this.balancePath = this.client.getZKRoot()+balancePath;

        balanceInfoMap = new HashMap<>();
    }

    public ZKBalanceService(String ZKHost,String path,int sessionTimeout,String balancePath){
        this.client = new ZKDefaultClient();
        this.client.initConnect(ZKHost,path,sessionTimeout);
        this.balancePath = this.client.getZKRoot()+balancePath;

        balanceInfoMap = new HashMap<>();
    }

    public ZKBalanceService(IZKClient client,String balancePath){
        this.client = client;
        this.balancePath = this.client.getZKRoot()+balancePath;

        balanceInfoMap = new HashMap<>();
    }

    public void initService(IBalanceStrategy<T> balanceStrategy){
        if (StringUtils.isEmpty(balanceStrategy.getBalancePrefix())){
            throw new EmptyStringException();
        }
        this.balanceStrategy = balanceStrategy;
        client.addWatcher(this.balancePath, new IZKWatcher() {
            @Override
            public boolean onNodeChange(String key, byte[] data) {
                int id = balanceStrategy.getBalanceInfoIdFromKey(key);
                T balanceInfo = balanceStrategy.decodeBalanceInfo(data);
                balanceInfoMap.put(id,balanceInfo);
                return true;
            }

            @Override
            public boolean onNodeDelete(String key) {
                int id = balanceStrategy.getBalanceInfoIdFromKey(key);
                balanceInfoMap.remove(id);
                return true;
            }

            @Override
            public boolean onNodeCreated(String key, byte[] data) {
                int id = balanceStrategy.getBalanceInfoIdFromKey(key);
                T balanceInfo = balanceStrategy.decodeBalanceInfo(data);
                balanceInfoMap.put(id,balanceInfo);
                return true;
            }

            @Override
            public IZKClient getZKClient() {
                return client;
            }
        }, ZKAddWatchMode.PERSISTENT_RECURSIVE);
    }

    public T getBalanceInfo(){
        return balanceStrategy.getBalanceInfo(balanceInfoMap);
    }

    public void start() {
        Thread balanceThread = new Thread(new Runnable() {
            @Override
            public void run() {
                while (true){

                }
            }
        }, "ZKBalanceThread");
        balanceThread.start();
    }
}
