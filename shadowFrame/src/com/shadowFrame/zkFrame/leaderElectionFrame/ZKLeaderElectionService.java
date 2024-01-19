package com.shadowFrame.zkFrame.leaderElectionFrame;

import com.shadowFrame.zkFrame.*;

public class ZKLeaderElectionService implements ILeaderElectionService {

    private String leaderPath;

    private IZKClient client;

    private boolean isLeader = false;

    public ZKLeaderElectionService(String leaderPath) {
        this.client = new ZKDefaultClient();
        ZKDefaultClient shadowZKClient = (ZKDefaultClient) client;
        shadowZKClient.initConnect();
        this.leaderPath = this.client.getZKRoot()+leaderPath;
    }

    public ZKLeaderElectionService(String ZKHost, String path, int sessionTimeout, String leaderPath) {
        this.client = new ZKDefaultClient();
        this.client.initConnect(ZKHost,path,sessionTimeout);
        this.leaderPath = this.client.getZKRoot()+leaderPath;
    }

    public ZKLeaderElectionService(IZKClient client, String leaderPath) {
        this.client = client;
        this.leaderPath = this.client.getZKRoot()+leaderPath;
    }

    public void initService(){
        this.client.addWatcher(this.leaderPath, new IZKWatcher() {
            @Override
            public boolean onNodeChange(String key, byte[] data) {
                return false;
            }

            @Override
            public boolean onNodeDelete(String key) {
                tryToBeLeader();
                return true;
            }

            @Override
            public boolean onNodeCreated(String key, byte[] data) {
                return false;
            }

            @Override
            public IZKClient getZKClient() {
                return client;
            }
        }, ZKAddWatchMode.PERSISTENT);
        tryToBeLeader();
    }

    @Override
    public boolean tryToBeLeader() {
        this.isLeader = this.client.createNode(this.leaderPath,"/leader", ZKCreateNodeMode.EPHEMERAL,false);
        return this.isLeader;
    }

    @Override
    public boolean isLeader() {
        return this.isLeader;
    }

    public void start() {
        Thread electionThread = new Thread(new Runnable() {
            @Override
            public void run() {
                while (true){

                }
            }
        }, "ZKElectionThread");
        electionThread.start();
    }

    public static void main(String[] args) {
        ZKLeaderElectionService service = new ZKLeaderElectionService("/leader");
        service.initService();
        service.start();
    }
}
