package com.shadowFrame.zkFrame;

import com.shadowFrame.data.annotation.ResourceFmtAnnotation;
import com.shadowFrame.data.template.base.BaseTemplate;
import com.shadowFrame.data.template.base.ResourceFmt;

@ResourceFmtAnnotation(fileName = "./shadowFrame/cfg/shadowZKConfig.cfg", format = ResourceFmt.PROPERTIES_RES)
public class ShadowZKConfig extends BaseTemplate {

    private String zookeeperServerHost;
    private int zookeeperSessionTimeout;
    private String zookeeperRootPath;
    private String zookeeperConfigPath;

    public String getZookeeperServerHost() {
        return zookeeperServerHost;
    }

    public void setZookeeperServerHost(String zookeeperServerHost) {
        this.zookeeperServerHost = zookeeperServerHost;
    }

    public int getZookeeperSessionTimeout() {
        return zookeeperSessionTimeout;
    }

    public void setZookeeperSessionTimeout(int zookeeperSessionTimeout) {
        this.zookeeperSessionTimeout = zookeeperSessionTimeout;
    }

    public String getZookeeperRootPath() {
        return zookeeperRootPath;
    }

    public void setZookeeperRootPath(String zookeeperRootPath) {
        this.zookeeperRootPath = zookeeperRootPath;
    }

    public String getZookeeperConfigPath() {
        return zookeeperConfigPath;
    }

    public void setZookeeperConfigPath(String zookeeperConfigPath) {
        this.zookeeperConfigPath = zookeeperConfigPath;
    }

    @Override
    public boolean invalid() {
        return false;
    }

    @Override
    public void assembly() {

    }
}
