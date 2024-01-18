package com.shadowFrame.zkFrame.leaderElectionFrame;

public interface ILeaderElectionService {

    boolean tryToBeLeader();

    boolean isLeader();

}
