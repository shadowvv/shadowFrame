package com.shadowFrame.zkFrame;

import org.apache.zookeeper.Watcher;

public interface IZKClient {

    boolean initConnect(String ZKHost,String path,int sessionTimeout);

    default String createNode(String nodePath,String data,ZKCreateNodeMode mode,boolean isCreateParent){
        return createNode(nodePath,data.getBytes(),mode,isCreateParent);
    }

    String createNode(String nodePath,byte[] data,ZKCreateNodeMode mode,boolean isCreateParent);

    default String createPersistentNode(String nodePath,String data,boolean isSequential,boolean isCreateParent){
        return createPersistentNode(nodePath,data.getBytes(),isSequential,isCreateParent);
    }

    default String createPersistentNode(String nodePath,byte[] data,boolean isSequential,boolean isCreateParent){
        ZKCreateNodeMode mode = ZKCreateNodeMode.PERSISTENT;
        if (isSequential){
            mode = ZKCreateNodeMode.PERSISTENT_SEQUENTIAL;
        }
        return createNode(nodePath,data,mode,isCreateParent);
    }

    default String createPersistentTTLNode(String nodePath,String data,boolean isSequential,boolean isCreateParent){
        return createPersistentTTLNode(nodePath,data.getBytes(),isSequential,isCreateParent);
    }

    default String createPersistentTTLNode(String nodePath,byte[] data,boolean isSequential,boolean isCreateParent){
        ZKCreateNodeMode mode = ZKCreateNodeMode.PERSISTENT_WITH_TTL;
        if (isSequential){
            mode = ZKCreateNodeMode.PERSISTENT_SEQUENTIAL_WITH_TTL;
        }
        return createNode(nodePath,data,mode,isCreateParent);
    }

    default String createEphemeralNode(String nodePath,String data,boolean isSequential,boolean isCreateParent){
        return createEphemeralNode(nodePath,data.getBytes(),isSequential,isCreateParent);
    }

    default String createEphemeralNode(String nodePath,byte[] data,boolean isSequential,boolean isCreateParent){
        ZKCreateNodeMode mode = ZKCreateNodeMode.EPHEMERAL;
        if (isSequential){
            mode = ZKCreateNodeMode.EPHEMERAL_SEQUENTIAL;
        }
        return createNode(nodePath,data,mode,isCreateParent);
    }

    default String createContainerNode(String nodePath,String data,boolean isSequential,boolean isCreateParent){
        return createContainerNode(nodePath,data.getBytes(),isCreateParent);
    }

    default String createContainerNode(String nodePath,byte[] data,boolean isCreateParent){
        return createNode(nodePath,data,ZKCreateNodeMode.CONTAINER,isCreateParent);
    }

    boolean checkExist(String nodePath);

    boolean checkExist(String nodePath,Watcher watcher);

    default String queryNodeString(String nodePath){
        byte[] data = queryNodeData(nodePath);
        return new String(data);
    }

    byte[] queryNodeData(String nodePath);

    boolean modifyNodeData(String nodePath, String data);

    boolean deleteNode(String nodePath);

    boolean addWatcher(String path, Watcher watcher,ZKAddWatchMode mode);

    boolean deleteWatcher(String path, Watcher watcher);

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
