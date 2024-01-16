package com.sample.zkFrame.balanceFrame;

import com.shadowFrame.zkFrame.IZKClient;
import com.shadowFrame.zkFrame.balanceFrame.IBalanceStrategy;
import com.shadowFrame.zkFrame.balanceFrame.ZKBalanceRegister;

public class ZKBalanceRegisterSample extends ZKBalanceRegister<ZKBalanceInfoSample> {

    public ZKBalanceRegisterSample(String balancePath, IBalanceStrategy<ZKBalanceInfoSample> balanceStrategy) {
        super(balancePath,balanceStrategy);
    }

    public ZKBalanceRegisterSample(String ZKHost, String path, int sessionTimeout, String balancePath,IBalanceStrategy<ZKBalanceInfoSample> balanceStrategy) {
        super(ZKHost, path, sessionTimeout, balancePath,balanceStrategy);
    }

    public ZKBalanceRegisterSample(IZKClient client, String balancePath,IBalanceStrategy<ZKBalanceInfoSample> balanceStrategy) {
        super(client, balancePath,balanceStrategy);
    }

    public static void main(String[] args) {
        ZKBalanceRegisterSample registerSample = new ZKBalanceRegisterSample("/balance",new ZKBalanceStrategySample());
        registerSample.registerBalanceInfo(new ZKBalanceInfoSample(1,"balanceTest"));
    }
}
