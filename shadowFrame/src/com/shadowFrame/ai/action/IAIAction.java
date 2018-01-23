package com.shadowFrame.ai.action;

import java.util.Collection;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.tendency.AITendencyParam;

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
	boolean doAction(DmcSceneObject self,AIActionParam param);

	/**
	 * 是否可以执行动作
	 * @param self 执行动作的场景物体
	 * @param param 动作参数
	 * @return
	 */
	boolean checkAction(DmcSceneObject self,AIActionParam param);

	/**
	 * 停止动作
	 */
	void stop(DmcSceneObject self);

	/**
	 * 重置动作参数
	 * @param param
	 * @param self
	 * @param currentTendency 
	 */
	void reset(AIActionParam param,DmcSceneObject self, AITendencyParam currentTendency);

	/**
	 * 是否结束动作
	 * @param self
	 * @param param
	 * @param collection 
	 * @return
	 */
	boolean isOver(DmcSceneObject self, AIActionParam param, Collection<AIEvent> collection);
	
}
