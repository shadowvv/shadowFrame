package com.game2sky.prilib.core.socket.logic.battle.newAi.hatred;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEventEnum;
import com.game2sky.prilib.core.socket.logic.battle.newAi.target.AITargetObjectCampEnum;
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
		if(event.getEventCampType().equals(AITargetObjectCampEnum.enemy)){
			DmcSceneObject source = event.getSource();
			
			if(event.getEventType().equals(AIEventEnum.Dead)){
				removeObject(source.getId());
				return;
			}
			if(event.getEventType().equals(AIEventEnum.EnterVigilanceRange)){
				if(!hatredObject.containsKey(source.getId())){
					hatredObject.put(source.getId(), source);
					hatredMeter.put(source.getId(), event.getEventHatredValue());
					damageMeter.put(source.getId(), 0L);					
				}
				return;
			}
			if(!hatredObject.containsKey(source.getId())){
				return;
			}
			
			int value = event.getEventHatredValue() + hatredMeter.get(source.getId());
			value = value < 0 ? 0 : value;
			if(value <= 0){
				removeObject(source.getId());
				return;
			}
			
			hatredMeter.put(source.getId(), value);
			long damage = event.getEventDamage() + damageMeter.get(source.getId());
			damageMeter.put(source.getId(), damage);
		}
	}
	
	private void removeObject(long id){
		hatredObject.remove(id);
		hatredMeter.remove(id);
		damageMeter.remove(id);
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
