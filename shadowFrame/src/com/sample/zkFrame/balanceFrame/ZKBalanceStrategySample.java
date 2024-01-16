package com.sample.zkFrame.balanceFrame;

import com.shadowFrame.zkFrame.balanceFrame.IBalanceStrategy;

import java.nio.ByteBuffer;
import java.util.Map;

public class ZKBalanceStrategySample implements IBalanceStrategy<ZKBalanceInfoSample> {
    @Override
    public ZKBalanceInfoSample getBalanceInfo(Map<Integer, ZKBalanceInfoSample> balanceInfoMap) {
        for (ZKBalanceInfoSample info:balanceInfoMap.values()){
            return info;
        }
        return null;
    }

    @Override
    public ZKBalanceInfoSample decodeBalanceInfo(byte[] data) {
        ByteBuffer byteBuffer = ByteBuffer.wrap(data);
        ZKBalanceInfoSample infoSample = new ZKBalanceInfoSample();
        infoSample.setId(byteBuffer.getInt());
        byte[] dataStringByte = new byte[data.length-4];
        byteBuffer.get(dataStringByte);
        infoSample.setData(new String(dataStringByte));
        return infoSample;
    }

    @Override
    public byte[] encodeBalanceInfo(ZKBalanceInfoSample balanceInfo) {
        ByteBuffer byteBuffer = ByteBuffer.allocate(100);
        byteBuffer.putInt(balanceInfo.getId());
        byteBuffer.put(balanceInfo.getData().getBytes());
        return byteBuffer.array();
    }

    @Override
    public int getBalanceInfoIdFromKey(String key) {
        String balanceId = key.substring(key.lastIndexOf("/"),key.length()).substring(8);
        return Integer.parseInt(balanceId);
    }
}
