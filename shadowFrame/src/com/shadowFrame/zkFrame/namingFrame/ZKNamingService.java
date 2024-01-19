package com.shadowFrame.zkFrame.namingFrame;

import com.shadowFrame.zkFrame.IZKClient;
import com.shadowFrame.zkFrame.balanceFrame.ZKBalanceService;

public class ZKNamingService<T> extends ZKBalanceService<T> {
    public ZKNamingService(String balancePath) {
        super(balancePath);
    }

    public ZKNamingService(String ZKHost, String path, int sessionTimeout, String balancePath) {
        super(ZKHost, path, sessionTimeout, balancePath);
    }

    public ZKNamingService(IZKClient client, String balancePath) {
        super(client, balancePath);
    }
}
