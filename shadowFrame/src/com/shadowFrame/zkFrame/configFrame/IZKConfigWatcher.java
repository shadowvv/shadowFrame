package com.shadowFrame.zkFrame.configFrame;

import com.shadowFrame.zkFrame.IZKClient;
import org.apache.zookeeper.WatchedEvent;
import org.apache.zookeeper.Watcher;

public interface IZKConfigWatcher extends Watcher {

    default boolean registerWatcher(IZKClient client, String configBase, Watcher watcher){
        return client.addPersistentRecursiveWatcher(configBase,watcher);
    }

    IZKClient getZKClient();

    boolean onConfigChange(String key,String value);

    boolean onConfigDelete(String key);

    boolean onConfigCreated(String key,String value);

    String getConfigPath();

    @Override
    default void process(WatchedEvent event) {
        switch (event.getType()){
            case NodeCreated:
                String createValue = getZKClient().queryNode(event.getPath());
                onConfigCreated(event.getPath(),createValue);
                break;
            case NodeDeleted:
                onConfigDelete(event.getPath());
                break;
            case NodeDataChanged:
                String changeValue = getZKClient().queryNode(event.getPath());
                onConfigChange(event.getPath(),changeValue);
                break;
        }
    }

    void startWatch();

}
