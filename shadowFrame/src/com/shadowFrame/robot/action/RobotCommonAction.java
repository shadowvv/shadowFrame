package com.test.robot.action;

import com.test.robot.IClientRobotAction;
import com.test.robot.IClinetRobot;

public class RobotCommonAction implements IClientRobotAction {

	@Override
	public boolean prepareAction() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void afterAction() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public IClientRobotAction getNextAction() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public RobotActionResult call() throws Exception {
		RobotActionResult result = RobotActionResult.SUCCESS;
		if(prepareAction()) {
			
			afterAction();
		}
		return result;
	}

	@Override
	public IClinetRobot getOwner() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
