package com.test.zookeeperTest;

import org.apache.zookeeper.*;
import org.apache.zookeeper.common.StringUtils;
import org.apache.zookeeper.data.Stat;
import org.springframework.util.CollectionUtils;

import java.io.IOException;
import java.util.List;
import java.util.concurrent.CountDownLatch;

public class ZooKeeperOriginalTest {

    private static final String ZK_ADDRESS = "127.0.0.1:2181";
    private static final String ZK_ROOT = "/root";
    private static CountDownLatch countDownLatch = new CountDownLatch(1);
    private static ZooKeeper zooKeeper;

    public static void main(String[] args) throws InterruptedException, KeeperException {
        initConnect(ZK_ADDRESS,50000);
        createNode(ZK_ROOT,"root data");
        updateNodeData(ZK_ROOT,"nice");
        createNode(ZK_ROOT + "/home","home data");
        createNodeRecursion(ZK_ROOT + "/user","recursion data");
        queryNode(ZK_ROOT);
        updateNodeData(ZK_ROOT,"nice");
        deleteRecursion(ZK_ROOT + "/user");
    }

    private static void initConnect(String connectAddr,int sessionTimeout) {
        try {
            zooKeeper = new ZooKeeper(connectAddr, sessionTimeout, watchEvent -> {
                Watcher.Event.KeeperState state = watchEvent.getState();
                Watcher.Event.EventType type = watchEvent.getType();
                if (Watcher.Event.KeeperState.SyncConnected == state){
                    if (Watcher.Event.EventType.None == type){
                        System.out.println("zk连接成功.....");
                        countDownLatch.countDown();
                    }
                }
                if (Watcher.Event.EventType.NodeCreated == type){
                    System.out.println("zk有节点【" + watchEvent.getPath() + "】创建！");
                }
                if (Watcher.Event.EventType.NodeDataChanged == type){
                    System.out.println("zk有节点【" + watchEvent.getPath() + "】数据改变！");
                }
                if (Watcher.Event.EventType.NodeDeleted == type){
                    System.out.println("zk有节点【" + watchEvent.getPath() + "】删除！");
                }
                if (Watcher.Event.EventType.NodeChildrenChanged == type){
                    System.out.println("zk有节点【" + watchEvent.getPath() + "】子节点变化！");
                }
                try {
                    countDownLatch.await();
                } catch (InterruptedException e) {
                    throw new RuntimeException(e);
                }
                System.out.println("zk connect success:" + zooKeeper);
            });
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private static void createNode(String nodePath,String data) throws InterruptedException, KeeperException {
        if (StringUtils.isEmpty(nodePath)){
            System.out.println("节点path不能为空");
            return;
        }
        Stat stat = zooKeeper.exists(nodePath,false);
        if (null != stat){
            System.out.println("节点已存在");
            return;
        }
        String result = zooKeeper.create(nodePath,data.getBytes(), ZooDefs.Ids.OPEN_ACL_UNSAFE,CreateMode.PERSISTENT);
        System.out.println("create node,result:" + result);
    }

    private static void createNodeRecursion(String nodePath,String data) throws InterruptedException, KeeperException {
        if (StringUtils.isEmpty(nodePath)){
            System.out.println("节点path不能为空");
            return;
        }
        String paths[] = nodePath.substring(1).split("/");
        for (int i = 0;i < paths.length;i++){
            String childPath = "";
            for (int j = 0;j <= i;j++){
                childPath += "/"  + paths[j];
            }
            createNode(childPath,data);
        }
    }

    private static void queryNode(String nodePath) throws InterruptedException, KeeperException {
        byte[] bytes = zooKeeper.getData(nodePath,false,null);
        System.out.println(new String(bytes));

        Stat stat = new Stat();
        byte[] data = zooKeeper.getData(nodePath,true,null);
        System.out.println("queryNode:" + nodePath + ",result:" + new String(data) + ",stat:" + stat);
    }

    private static void updateNodeData(String nodePath,String data) throws InterruptedException, KeeperException {
        Stat stat = zooKeeper.setData(nodePath,data.getBytes(),-1);
        System.out.println("setData:" + nodePath + ", stat:" + stat);
    }

    private static void deleteNode(String nodePath) throws InterruptedException, KeeperException {
        Stat stat = zooKeeper.exists(nodePath,true);
        if (null == stat){
            System.out.println(nodePath + "不存在");
            return;
        }
        zooKeeper.delete(nodePath,-1);
        System.out.println("delete node:" + nodePath);
    }

    private static void deleteRecursion(String nodePath) throws InterruptedException, KeeperException {
        Stat stat = zooKeeper.exists(nodePath,true);
        if (null == stat){
            System.out.println(nodePath + "不存在");
            return;
        }
        List<String> list = zooKeeper.getChildren(nodePath,true);
        if (CollectionUtils.isEmpty(list)){
            deleteNode(nodePath);
            String parentPath = nodePath.substring(0,nodePath.lastIndexOf("/"));
            System.out.println("parentPath:" + parentPath);
            if (!StringUtils.isBlank(parentPath)){
                deleteRecursion(parentPath);
            }
        }else {
            for (String child:list){
                deleteRecursion(nodePath + "/" + child);
            }
        }
    }
}
