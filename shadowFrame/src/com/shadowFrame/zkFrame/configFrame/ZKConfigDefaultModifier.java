package com.shadowFrame.zkFrame.configFrame;

import com.shadowFrame.zkFrame.IZKClient;
import com.shadowFrame.zkFrame.ZKDefaultClient;
import org.apache.zookeeper.common.StringUtils;
import org.apache.zookeeper.data.Stat;

public class ZKConfigDefaultModifier implements IZKConfigModifier {

    private String configPath;

    private IZKClient client;

    public ZKConfigDefaultModifier(String configPath){
        this.client = new ZKDefaultClient();
        ZKDefaultClient shadowZKClient = (ZKDefaultClient) client;
        shadowZKClient.initConnect();

        this.configPath = this.client.getZKRoot()+configPath;
        if (!this.client.checkExist(this.configPath)){
            this.client.createPersistentNode(this.configPath,"configRoot",false,false);
        }
    }

    public ZKConfigDefaultModifier(String ZKHost,String path,int sessionTimeout,String configPath){
        this.client = new ZKDefaultClient();
        this.client.initConnect(ZKHost,path,sessionTimeout);

        this.configPath = this.client.getZKRoot()+configPath;
        if (!this.client.checkExist(this.configPath)){
            this.client.createPersistentNode(this.configPath,"configRoot",false,false);
        }
    }

    public ZKConfigDefaultModifier(IZKClient client,String path,String configPath){
        this.client = client;
        this.configPath = this.client.getZKRoot()+configPath;
        if (!this.client.checkExist(this.configPath)){
            this.client.createPersistentNode(this.configPath,"configRoot",false,false);
        }
    }

    @Override
    public boolean createConfig(String key,String value) {
        if (StringUtils.isEmpty(key)){
            return false;
        }
        String path = this.configPath+key;
        if (client.checkExist(path)){
            return false;
        }
        return client.createPersistentNode(path,value,false,false);
    }

    @Override
    public boolean modifyConfig(String key, String value) {
        if (StringUtils.isEmpty(key)){
            return false;
        }
        String path = this.configPath+key;
        if (!client.checkExist(path)){
            return false;
        }
        return client.modifyNodeData(path,value);
    }

    @Override
    public boolean deleteConfig(String key) {
        if (StringUtils.isEmpty(key)){
            return false;
        }
        String path = this.configPath+key;
        if (client.checkExist(path)){
            return false;
        }
        return client.deleteNode(path);
    }

    @Override
    public String getConfigPath() {
        return configPath;
    }

    public static void main(String[] args) {
        ZKConfigDefaultModifier modifier = new ZKConfigDefaultModifier("/config");
        modifier.createConfig("/testConfig","testConfig");
        modifier.modifyConfig("/testConfig","updateConfig1");
        modifier.modifyConfig("/testConfig","updateConfig2");
        modifier.modifyConfig("/testConfig","updateConfig3");
        modifier.modifyConfig("/testConfig","updateConfig4");
        modifier.modifyConfig("/testConfig","updateConfig5");
        modifier.modifyConfig("/testConfig","updateConfig6");
    }
}
