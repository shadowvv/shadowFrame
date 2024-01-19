package com.shadowFrame.zkFrame.groupMemberFrame;

import com.shadowFrame.zkFrame.IZKClient;
import com.shadowFrame.zkFrame.balanceFrame.ZKBalanceService;

public class ZKGroupMemberManager<T> extends ZKBalanceService<T> {
    public ZKGroupMemberManager(String balancePath) {
        super(balancePath);
    }

    public ZKGroupMemberManager(String ZKHost, String path, int sessionTimeout, String balancePath) {
        super(ZKHost, path, sessionTimeout, balancePath);
    }

    public ZKGroupMemberManager(IZKClient client, String balancePath) {
        super(client, balancePath);
    }
}
