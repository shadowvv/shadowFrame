package com.shadowFrame.zkFrame;

import org.apache.zookeeper.WatchedEvent;
import org.apache.zookeeper.Watcher;

public interface IZKWatcher extends Watcher {

    boolean onNodeChange(String key,byte[] data);

    boolean onNodeDelete(String key);

    boolean onNodeCreated(String key,byte[] data);

    IZKClient getZKClient();

    @Override
    default void process(WatchedEvent event) {
        switch (event.getType()){
            case NodeCreated:
                byte[] createData = getZKClient().queryNodeData(event.getPath());
                onNodeCreated(event.getPath(),createData);
                break;
            case NodeDeleted:
                onNodeDelete(event.getPath());
                break;
            case NodeDataChanged:
                byte[] nodeData = getZKClient().queryNodeData(event.getPath());
                onNodeChange(event.getPath(),nodeData);
                break;
        }
    }
}
