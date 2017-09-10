package com.game2sky.prilib.core.socket.logic.battle.newAi.tendency;

import com.game2sky.prilib.core.socket.logic.battle.newAi.action.AIActionParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

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
	boolean CanEnterTendency(DmcSceneObject self,AITendencyParam param);

	/**
	 * 获得行为的下一个动作
	 * @param self ai结附的场景物体
	 * @param param 行为参数
	 * @param currentAction 当前行为
	 * @return
	 */
	AIActionParam getNextAction(DmcSceneObject self,AITendencyParam param, AIActionParam currentAction);

	/**
	 * 是否可停止行为
	 * @param self
	 * @param param
	 * @return
	 */
	boolean isOver(DmcSceneObject self, AITendencyParam param);
	
}
