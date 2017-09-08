package com.game2sky.prilib.core.socket.logic.battle.newAi.event;

/**
 * 讲aoi事件转换为ai事件
 * @author shadow
 *
 */
public interface IAOI2AIEvent {

	/**
	 * 派发ai事件
	 * @param aoiEvent
	 */
	void dispatchAIEvent(AOIEvent aoiEvent);
	
}
