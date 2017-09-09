package com.game2sky.prilib.core.socket.logic.battle.newAi.event;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.aoiEvent.AOIEvent;

/**
 * 讲aoi事件转换为ai事件
 * @author shadow
 *
 */
public interface IDispatchAIEvent {

	/**
	 * 派发ai事件
	 * @param aoiEvent
	 */
	void dispatchAIEvent(AOIEvent aoiEvent);
	
}
