package com.shadowFrame.robot.action;

import com.shadowFrame.robot.IClinetRobot;

public class RobotCommonAction implements IClientRobotAction {
	
	private IClinetRobot robot;
	
	public RobotCommonAction() {

	}
	
	public void setRobot(IClinetRobot robot) {
		this.robot = robot;
	}

	@Override
	public boolean prepareAction() {
		return true;
	}

	@Override
	public void afterAction() {
		
	}

	@Override
	public IClientRobotAction getNextAction() {
		return null;
	}

	@Override
	public RobotActionResult call() throws Exception {
		RobotActionResult result = RobotActionResult.SUCCESS;
		if(prepareAction()) {
			getOwner().send("hello world:"+robot.getId());
			afterAction();
		}
		return result;
	}

	@Override
	public IClinetRobot getOwner() {
		return robot;
	}
	
}
