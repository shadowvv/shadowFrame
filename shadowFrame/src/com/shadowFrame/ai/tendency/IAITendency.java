package com.shadowFrame.ai.tendency;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.action.AIActionParam;

/**
 * ai行为接口
 * @author shadow
 *
 */
public interface IAITendency {

	/**
	 * 获得行为的下一个动作
	 * @param self ai结附的场景物体
	 * @param param 行为参数
	 * @param currentAction 当前行为
	 * @return
	 */
	AIActionParam getNextAction(DmcSceneObject self,AITendencyParam param, AIActionParam currentAction);
	
}
