package com.shadowFrame.zkFrame.leaderElectionFrame;

public interface ILeaderElection {

    boolean tryToBeLeader();

    boolean isLeader();

}
