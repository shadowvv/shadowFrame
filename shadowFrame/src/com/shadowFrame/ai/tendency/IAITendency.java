package com.game2sky.prilib.core.socket.logic.battle.newAi.tendency;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.action.AOIActionParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIEvent;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * ai行为接口
 * @author shadow
 *
 */
public interface IAITendency {
	
	/**
	 * 是否可进行行为
	 * @param self ai结附的场景物体
	 * @param event 事件集合
	 * @param param 行为参数
	 * @return
	 */
	boolean CanEnterTendency(DmcSceneObject self,List<IAIEvent> event,AITendencyParam param);

	/**
	 * 获得行为的下一个动作
	 * @param self ai结附的场景物体
	 * @param event 事件集合
	 * @param param 行为参数
	 * @param currentAction 当前行为
	 * @return
	 */
	AOIActionParam getNextAction(DmcSceneObject self,List<IAIEvent> event,AITendencyParam param, AOIActionParam currentAction);

	/**
	 * 停止行为
	 */
	void stop();
	
}
