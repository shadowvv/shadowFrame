package com.shadowFrame.ai.action;

import com.shadowFrame.ai.DmcSceneObject;


/**
 * ai动作基类
 *
 * @author shadow
 * @version v0.1 2017年10月30日 下午2:53:16  shadow
 */
public abstract class AbstractAIAction implements IAIAction {

	@Override
	public final boolean doAction(DmcSceneObject self, AIActionParam param) {
		if(!checkAction(self, param)){
			return false;
		}
		return action(self, param);
	}
	
	/**
	 * 执行动作
	 * 
	 * @param self
	 * @param param
	 * @return
	 */
	protected abstract boolean action(DmcSceneObject self, AIActionParam param);

}
