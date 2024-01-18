package com.sample.zkFrame.leaderElectionFrame;

import com.shadowFrame.zkFrame.leaderElectionFrame.ZKLeaderElectionService;

public class ZKLeaderElectionServiceSample {

    public static void main(String[] args) {
        ZKLeaderElectionService service = new ZKLeaderElectionService("/leader");
        service.initService();
        service.start();
    }

}
