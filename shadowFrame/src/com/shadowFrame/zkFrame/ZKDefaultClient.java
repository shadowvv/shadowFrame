package com.shadowFrame.zkFrame;

import com.shadowFrame.data.template.loader.ResourceLoader;
import com.shadowFrame.log.ShadowLogger;
import org.apache.zookeeper.*;
import org.apache.zookeeper.common.StringUtils;
import org.apache.zookeeper.data.Stat;

import java.io.IOException;
import java.util.concurrent.CountDownLatch;

public class ZKDefaultClient implements IZKClient {

    private static String zkHost;
    private static String zkRoot;
    private static int zkSessionTimeout;
    private static ZooKeeper zooKeeper;
    private CountDownLatch latch;

    public ZKDefaultClient(){
        latch = new CountDownLatch(1);
    }

    public boolean initConnect(){
        ShadowZKConfig config = ResourceLoader.loadTemplate(ShadowZKConfig.class).get("ShadowZKConfig");
        zkHost = config.getZookeeperServerHost();
        zkRoot = config.getZookeeperRootPath();
        zkSessionTimeout = config.getZookeeperSessionTimeout();
        initConnect(zkHost, zkRoot, zkSessionTimeout);
        return true;
    }

    @Override
    public boolean initConnect(String ZKHost,String path,int sessionTimeout) {
        zkHost = ZKHost;
        zkRoot = path;
        zkSessionTimeout = sessionTimeout;
        try {
            zooKeeper = new ZooKeeper(ZKHost, sessionTimeout, event -> {
                Watcher.Event.KeeperState state = event.getState();
                Watcher.Event.EventType type = event.getType();
                if (Watcher.Event.KeeperState.SyncConnected == state){
                    if (Watcher.Event.EventType.None == type){
                        ShadowLogger.logPrintln("zk连接成功.....");

                        if (!this.checkExist(zkRoot)){
                            this.createPersistentNode(zkRoot,"/Root",false,false);
                        }

                        latch.countDown();
                    }
                }
            });
            latch.await();
        } catch (IOException | InterruptedException e) {
            throw new RuntimeException(e);
        }
        return true;
    }

    @Override
    public boolean createNode(String nodePath,byte[] data,ZKCreateNodeMode mode,boolean isCreateParent) {
        if (StringUtils.isEmpty(nodePath)){
            return false;
        }
        if (isCreateParent){
            String[] nodePaths = nodePath.substring(1).split("/");
            for (int i = 0; i < nodePaths.length; i++) {
                String path = "";
                for (int j = 0; j <= i ; j++) {
                    path = path + "/" + nodePaths[j];
                    if (!createNode(nodePath, data, mode)){
                        return false;
                    }
                }
            }
            return true;
        }else {
            return createNode(nodePath,data,mode);
        }
    }

    private boolean createNode(String nodePath,byte[] data,ZKCreateNodeMode mode){
        try {
            Stat stat = zooKeeper.exists(nodePath,true);
            if (stat != null){
                return false;
            }
            zooKeeper.create(nodePath,data,ZooDefs.Ids.OPEN_ACL_UNSAFE,getCreateMode(mode));
        } catch (KeeperException | InterruptedException e) {
            throw new RuntimeException(e);
        }
        return true;
    }

    private CreateMode getCreateMode(ZKCreateNodeMode mode){
        switch (mode){
            case PERSISTENT:
                return CreateMode.PERSISTENT;
            case PERSISTENT_SEQUENTIAL:
                return CreateMode.PERSISTENT_SEQUENTIAL;
            case PERSISTENT_WITH_TTL:
                return CreateMode.PERSISTENT_WITH_TTL;
            case PERSISTENT_SEQUENTIAL_WITH_TTL:
                return CreateMode.PERSISTENT_SEQUENTIAL_WITH_TTL;
            case EPHEMERAL:
                return CreateMode.EPHEMERAL;
            case EPHEMERAL_SEQUENTIAL:
                return CreateMode.EPHEMERAL_SEQUENTIAL;
            case CONTAINER:
                return CreateMode.CONTAINER;
            default:
                throw new EnumConstantNotPresentException(ZKCreateNodeMode.class,mode.toString());
        }
    }

    @Override
    public boolean checkExist(String nodePath){
        try {
            Stat stat = zooKeeper.exists(nodePath,true);
            if (stat == null){
                return false;
            }
            return true;
        } catch (KeeperException | InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public byte[] queryNodeData(String nodePath) {
        try {
            Stat stat = new Stat();
            return zooKeeper.getData(nodePath,true,stat);
        } catch (KeeperException | InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean modifyNodeData(String nodePath, String data) {
        try {
            Stat stat = zooKeeper.setData(nodePath,data.getBytes(),-1);
            return true;
        } catch (KeeperException | InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean deleteNode(String nodePath) {
        try {
            Stat stat = zooKeeper.exists(nodePath,true);
            if (stat == null){
                return false;
            }
            zooKeeper.delete(nodePath,-1);
            return true;
        } catch (KeeperException | InterruptedException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean addWatcher(String path, Watcher watcher, ZKAddWatchMode mode) {
        try {
            zooKeeper.addWatch(path,watcher,getWatchMode(mode));
        }catch (InterruptedException | KeeperException e) {
            throw new RuntimeException(e);
        }
        return true;
    }

    private AddWatchMode getWatchMode(ZKAddWatchMode mode){
        switch (mode){
            case ONCE:
                return null;
            case PERSISTENT:
                return AddWatchMode.PERSISTENT;
            case PERSISTENT_RECURSIVE:
                return AddWatchMode.PERSISTENT_RECURSIVE;
            default:
                throw new EnumConstantNotPresentException(ZKAddWatchMode.class,mode.toString());
        }
    }

    @Override
    public String getZKRoot() {
        return zkRoot;
    }

    public static void main(String[] args) {
        ZKDefaultClient client = new ZKDefaultClient();
        client.initConnect();
    }

}