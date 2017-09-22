package com.shadowFrame.ai.tendency;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.action.AIActionParam;

/**
 * ai行为接口
 * @author shadow
 *
 */
public interface IAITendency {
	
	/**
	 * 是否可进入行为
	 * @param self ai结附的场景物体
	 * @param param 行为参数
	 * @return
	 */
	boolean CanEnterTendency(SceneObject self,AITendencyParam param);

	/**
	 * 获得行为的下一个动作
	 * @param self ai结附的场景物体
	 * @param param 行为参数
	 * @param currentAction 当前行为
	 * @return
	 */
	AIActionParam getNextAction(SceneObject self,AITendencyParam param, AIActionParam currentAction);

	/**
	 * 是否可停止行为
	 * @param self
	 * @param param
	 * @return
	 */
	boolean isOver(SceneObject self, AITendencyParam param);
	
}
