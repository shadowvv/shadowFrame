package com.shadowFrame.zkFrame.balanceFrame;

import java.util.Map;

public interface IBalanceStrategy<T> {

    T getBalanceInfo(Map<Integer,T> balanceInfoMap);

    T decodeBalanceInfo(byte[] data);

    byte[] encodeBalanceInfo(T balanceInfo);

    int getBalanceInfoIdFromKey(String key);

}