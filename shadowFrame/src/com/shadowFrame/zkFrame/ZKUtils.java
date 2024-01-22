package com.shadowFrame.zkFrame;

import com.shadowFrame.log.ShadowLogger;
import com.shadowFrame.util.EmptyStringException;

public class ZKUtils {

    public static final int ZOOKEEPER_INDEX_LENGTH = 10;
    public static final String ZOOKEEPER_INDEX_STRING = "000000000";

    public static long getZKIndex(String nodeKey){
        if (nodeKey == null){
            throw new EmptyStringException();
        }
        long index = Long.parseLong(nodeKey.substring(nodeKey.length() - ZOOKEEPER_INDEX_LENGTH));
        return index;
    }

    public static String buildZKIndex(long index){
        int param = 1;
        int beginIndex = 0;
        for (int i = 0; i < ZOOKEEPER_INDEX_LENGTH; i++) {
            if (index/param != 0){
                beginIndex = beginIndex + 1;
            }else {
                break;
            }
            param = param*10;
        }
        if (beginIndex >= 10){
            throw new IllegalArgumentException();
        }
        String indexString = ZOOKEEPER_INDEX_STRING.substring(beginIndex - 1)+index;
        return indexString;
    }


    public static void main(String[] args) {
        String indexString = buildZKIndex(2222222222L);
        ShadowLogger.logPrintln(indexString);
    }
}
