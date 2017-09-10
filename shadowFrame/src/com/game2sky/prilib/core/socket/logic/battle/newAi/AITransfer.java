package com.game2sky.prilib.core.socket.logic.battle.newAi;

import java.util.ArrayList;
import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.threshold.AIThresholdParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * ai事件和门槛检测
 * @author shadow
 *
 */
public class AITransfer {
	
	/**
	 * AI切换检测
	 * @param threshold 待检测门槛,null为要求
	 * @param event 待检测事件,null为无要求
	 * @param self ai场景物体 
	 * @return
	 */
	public static boolean transfer(AIThresholdParam threshold, AIEvent event, DmcSceneObject self) {
		List<AIEvent> events = new ArrayList<AIEvent>();
		if(event != null){
			events.add(event);			
		}
		List<AIThresholdParam> thresholds = new ArrayList<AIThresholdParam>();
		if(threshold != null){
			thresholds.add(threshold);
		}
		return transfer(thresholds, events, self);
	}
	
	/**
	 * AI切换检测
	 * @param thresholds 待检测门槛,null为要求
	 * @param event 待检测事件,null为要求
	 * @param self ai场景物体 
	 * @return
	 */
	public static boolean transfer(List<AIThresholdParam> thresholds, AIEvent event, DmcSceneObject self){
		List<AIEvent> events = new ArrayList<AIEvent>();
		if(event != null){
			events.add(event);			
		}
		return transfer(thresholds, events, self);
	}

	/**
	 * AI切换检测
	 * @param threshold 待检测门槛,null为要求
	 * @param events 待检测事件,null为要求
	 * @param self ai场景物体 
	 * @return
	 */
	public static boolean transfer(AIThresholdParam threshold, List<AIEvent> events, DmcSceneObject self) {
		List<AIThresholdParam> thresholds = new ArrayList<AIThresholdParam>();
		if(threshold != null){
			thresholds.add(threshold);
		}
		return transfer(thresholds, events, self);
	}
	
	/**
	 * AI切换检测
	 * @param thresholds 待检测门槛,null为要求
	 * @param events 待检测事件,null为要求
	 * @param self ai场景物体 
	 * @return
	 */
	public static boolean transfer(List<AIThresholdParam> thresholds, List<AIEvent> events, DmcSceneObject self){
		if(thresholds == null && events == null){
			return true;
		}
		for (AIThresholdParam threshold : thresholds) {
			if(!threshold.overThreshold(self)){
				return false;
			}
		}

		for (AIEvent param : events) {
			boolean match = false;
			for (AIEvent aoiEvent : self.getAIEvents()) {
				if(param.match(aoiEvent)){
					match = true;
					break;
				}
			}
			if(!match){
				return false;
			}
		}
		return true;
	}

}
