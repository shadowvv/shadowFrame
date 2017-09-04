package com.game2sky.prilib.core.socket.logic.battle.newAi;

import java.util.ArrayList;
import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.threshold.AIThresholdParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * ai事件和门槛检测
 * @author shadow
 *
 */
public class AITransfer {

	/**
	 * 转换检测
	 * @param threshold 待检测门槛
	 * @param event 待接触事件
	 * @param self 转换的场景物体
	 * @param aoiEventList 事件列表
	 * @return
	 */
	public static boolean transfer(AIThresholdParam threshold, IAIEvent event, DmcSceneObject self, List<IAIEvent> aoiEventList) {
		List<IAIEvent> list = new ArrayList<IAIEvent>();
		if(event != null){
			list.add(event);			
		}
		return transfer(threshold, list, self, aoiEventList);
	}

	/**
	 * 转换检测
	 * @param threshold 待检测门槛
	 * @param event 待接触事件
	 * @param self 转换的场景物体
	 * @param aoiEventList 事件列表
	 * @return
	 */
	public static boolean transfer(AIThresholdParam threshold, List<IAIEvent> event, DmcSceneObject self,List<IAIEvent> aoiEventList) {
		if(threshold == null && event.size() == 0){
			return true;
		}
		if(!threshold.overThreshold(self)){
			return false;
		}
		for (IAIEvent param : event) {
			boolean match = false;
			for (IAIEvent aoiEvent : aoiEventList) {
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
