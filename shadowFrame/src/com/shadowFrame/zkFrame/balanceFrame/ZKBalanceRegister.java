package com.shadowFrame.zkFrame.balanceFrame;

import com.shadowFrame.zkFrame.IZKClient;
import com.shadowFrame.zkFrame.ZKDefaultClient;

public class ZKBalanceRegister<T> {

    private String balancePath;
    private IZKClient client;
    private IBalanceStrategy<T> balanceStrategy;

    public ZKBalanceRegister(String balancePath,IBalanceStrategy<T> balanceStrategy){
        this.client = new ZKDefaultClient();
        ZKDefaultClient shadowZKClient = (ZKDefaultClient) client;
        shadowZKClient.initConnect();

        this.balancePath = this.client.getZKRoot()+balancePath;
        if (!this.client.checkExist(this.balancePath)){
            this.client.createPersistentNode(this.balancePath,"balanceRoot",false,false);
        }

        this.balanceStrategy = balanceStrategy;
    }

    public ZKBalanceRegister(String ZKHost,String path,int sessionTimeout,String balancePath,IBalanceStrategy<T> balanceStrategy){
        this.client = new ZKDefaultClient();
        this.client.initConnect(ZKHost,path,sessionTimeout);

        this.balancePath = this.client.getZKRoot()+balancePath;
        if (!this.client.checkExist(this.balancePath)){
            this.client.createPersistentNode(this.balancePath,"balanceRoot",false,false);
        }

        this.balanceStrategy = balanceStrategy;
    }

    public ZKBalanceRegister(IZKClient client,String balancePath,IBalanceStrategy<T> balanceStrategy){
        this.client = client;

        this.balancePath = this.client.getZKRoot()+balancePath;
        if (!this.client.checkExist(this.balancePath)){
            this.client.createPersistentNode(this.balancePath,"balanceRoot",false,false);
        }

        this.balanceStrategy = balanceStrategy;
    }

    public boolean registerBalanceInfo(T balanceInfo){
        return this.client.createEphemeralNode(balancePath+"/balance",this.balanceStrategy.encodeBalanceInfo(balanceInfo),true,false);
    }

}
