package com.shadowFrame.ai.action;

import com.shadowFrame.ai.SceneObject;

/**
 * ai动作接口
 * @author shadow
 *
 */
public interface IAIAction {
	
	/**
	 * 执行动作
	 * @param self 执行动作的场景物体
	 * @param param 动作参数
	 * @return 执行动作成功
	 */
	boolean doAction(SceneObject self,AIActionParam param);

	/**
	 * 是否可以执行动作
	 * @param self 执行动作的场景物体
	 * @param param 动作参数
	 * @return
	 */
	boolean checkAction(SceneObject self,AIActionParam param);

	/**
	 * 停止动作
	 */
	void stop(SceneObject self);

	/**
	 * 重置动作参数
	 * @param param
	 */
	void reset(AIActionParam param);

	/**
	 * 是否结束动作
	 * @param self
	 * @param param
	 * @return
	 */
	boolean isOver(SceneObject self, AIActionParam param);
	
}
