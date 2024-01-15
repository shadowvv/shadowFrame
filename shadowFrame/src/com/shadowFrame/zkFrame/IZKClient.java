package com.shadowFrame.zkFrame;

import org.apache.zookeeper.Watcher;

public interface IZKClient {

    boolean initConnect(String ZKHost,String path,int sessionTimeout);

    boolean createNode(String nodePath,String data,ZKCreateNodeMode mode,boolean isCreateParent);

    default boolean createPersistentNode(String nodePath,String data,boolean isSequential,boolean isCreateParent){
        ZKCreateNodeMode mode = ZKCreateNodeMode.PERSISTENT;
        if (isSequential){
            mode = ZKCreateNodeMode.PERSISTENT_SEQUENTIAL;
        }
        return createNode(nodePath,data,mode,isCreateParent);
    }

    default boolean createPersistentTTLNode(String nodePath,String data,boolean isSequential,boolean isCreateParent){
        ZKCreateNodeMode mode = ZKCreateNodeMode.PERSISTENT_WITH_TTL;
        if (isSequential){
            mode = ZKCreateNodeMode.PERSISTENT_SEQUENTIAL_WITH_TTL;
        }
        return createNode(nodePath,data,mode,isCreateParent);
    }

    default boolean createEphemeralNode(String nodePath,String data,boolean isSequential,boolean isCreateParent){
        ZKCreateNodeMode mode = ZKCreateNodeMode.EPHEMERAL;
        if (isSequential){
            mode = ZKCreateNodeMode.EPHEMERAL_SEQUENTIAL;
        }
        return createNode(nodePath,data,mode,isCreateParent);
    }

    default boolean createContainerNode(String nodePath,String data,boolean isCreateParent){
        return createNode(nodePath,data,ZKCreateNodeMode.CONTAINER,isCreateParent);
    }

    boolean checkExist(String nodePath);

    String queryNode(String nodePath);

    boolean modifyNodeData(String nodePath, String data);

    boolean deleteNode(String nodePath);

    boolean addWatcher(String path, Watcher watcher,ZKAddWatchMode mode);

    default boolean AddOnceWatcher(String path, Watcher watcher){
        return addWatcher(path,watcher,ZKAddWatchMode.ONCE);
    }

    default boolean addPersistentWatcher(String path, Watcher watcher){
        return addWatcher(path,watcher,ZKAddWatchMode.PERSISTENT);
    }

    default boolean addPersistentRecursiveWatcher(String path, Watcher watcher){
        return addWatcher(path,watcher,ZKAddWatchMode.PERSISTENT_RECURSIVE);
    }

    String getZKRoot();
}
