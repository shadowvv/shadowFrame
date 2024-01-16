package com.sample.zkFrame.balanceFrame;

import com.shadowFrame.zkFrame.IZKClient;
import com.shadowFrame.zkFrame.balanceFrame.ZKBalanceService;

public class ZKBalanceServiceSample extends ZKBalanceService<ZKBalanceInfoSample> {
    public ZKBalanceServiceSample(String balancePath) {
        super(balancePath);
    }

    public ZKBalanceServiceSample(String ZKHost, String path, int sessionTimeout, String balancePath) {
        super(ZKHost, path, sessionTimeout, balancePath);
    }

    public ZKBalanceServiceSample(IZKClient client, String balancePath) {
        super(client, balancePath);
    }

    public static void main(String[] args) {
        ZKBalanceServiceSample serviceSample = new ZKBalanceServiceSample("/balance");
        serviceSample.initService(new ZKBalanceStrategySample());
        serviceSample.start();
    }
}
