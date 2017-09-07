package com.game2sky.prilib.core.socket.logic.battle.newAi.hatred;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEvent;
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
	 * 触发事件
	 * @param event 事件
	 */
	public void onAoiEvent(AIEvent event){
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

	/**
	 * 
	 * @return 仇恨列表数量
	 */
	public int getSize() {
		return hatredObject.size();
	}

	/**
	 * 
	 * @return 仇恨列表所有单位
	 */
	public List<DmcSceneObject> getAllHatredObjects() {
		return new ArrayList<DmcSceneObject>(hatredObject.values());
	}
	
	/**
	 * 
	 * @return 仇恨值最高的目标
	 */
	public DmcSceneObject getCommonTarget(){
		int max = -1;
		long playerId = 0;
		for (Entry<Long, Integer> entry : hatredMeter.entrySet()) {
			if(max < entry.getValue()){
				max = entry.getValue();
				playerId = entry.getKey();
			}
		}
		return hatredObject.get(playerId);
	}
	
}
