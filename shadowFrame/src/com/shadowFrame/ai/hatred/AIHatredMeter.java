package com.game2sky.prilib.core.socket.logic.battle.newAi.hatred;

import java.util.HashMap;
import java.util.Map;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIEvent;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * 仇恨值统计系统
 * @author shadow
 *
 */
public class AIHatredMeter {

	private Map<Long, DmcSceneObject> hatredObject;
	private Map<Long, Integer> hatredMeter;
	private Map<Long, Long> damageMeter;

	public AIHatredMeter() {
		hatredObject = new HashMap<Long, DmcSceneObject>();
		hatredMeter = new HashMap<Long, Integer>();
		damageMeter = new HashMap<Long, Long>();
	}
	
	/**
	 * 
	 * @param event
	 */
	public void onAoiEvent(IAIEvent event){
		DmcSceneObject source = event.getSource();
		int value = event.getEventHatredValue();
		if (hatredObject.containsKey(source.getId())) {
			value = value + hatredMeter.get(source.getId());
		} else {
			hatredObject.put(source.getId(), source);
		}
		value = value < 0 ? 0 : value;
		hatredMeter.put(source.getId(), value);
	}
	
}
