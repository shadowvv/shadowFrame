package com.game2sky.prilib.core.socket.logic.battle.newAi.event;

/**
 * 讲aoi事件转换为ai事件并广播
 * @author shadow
 *
 */
public interface IDispatchAIEvent {
	
	/**
	 * 广播ai事件
	 */
	void dispatchAIEvent(AOIEvent aoiEvent);
	
}
