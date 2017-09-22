package com.shadowFrame.ai.event;

import com.shadowFrame.ai.event.aoiEvent.AOIEvent;

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
