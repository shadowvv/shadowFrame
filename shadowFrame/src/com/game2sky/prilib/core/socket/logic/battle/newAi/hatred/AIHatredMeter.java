package com.game2sky.prilib.core.socket.logic.battle.newAi.hatred;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import com.game2sky.prilib.core.dict.domain.DictBattleConfig;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEventEnum;
import com.game2sky.prilib.core.socket.logic.battle.newAi.target.AITargetObjectCampEnum;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * 仇恨值统计系统
 * 
 * @author shadow
 *
 */
public class AIHatredMeter {

	private Map<Long, DmcSceneObject> hatredObject;
	private Map<Long, Integer> hatredMeter;
	private Map<Long, Long> damageMeter;
	private DmcSceneObject commonTarget;

	public AIHatredMeter() {
		hatredObject = new HashMap<Long, DmcSceneObject>();
		hatredMeter = new HashMap<Long, Integer>();
		damageMeter = new HashMap<Long, Long>();
	}

	/**
	 * 触发事件
	 * 
	 * @param event
	 *            事件
	 */
	public void onAoiEvent(AIEvent event) {
		if (event.getEventCampType().equals(AITargetObjectCampEnum.enemy)) {
			DmcSceneObject source = event.getSource();

			if (event.getEventType().equals(AIEventEnum.Dead)) {
				removeObject(source.getId());
				return;
			}
			if (!hatredObject.containsKey(source.getId())) {
				if (event.getEventType().equals(AIEventEnum.EnterVigilanceRange) || event.getEventType().equals(AIEventEnum.ReleaseSkill)) {
					addObject(source, event);
					if (hatredObject.size() == 1) {
						commonTarget = source;
					}
				}
				return;
			}
			if (!hatredObject.containsKey(source.getId())) {
				return;
			}

			int value = event.getEventHatredValue() + hatredMeter.get(source.getId());
			value = value < 0 ? 0 : value;
			if (value <= 0) {
				removeObject(source.getId());
				return;
			}

			hatredMeter.put(source.getId(), value);
			long damage = event.getEventDamage() + damageMeter.get(source.getId());
			damageMeter.put(source.getId(), damage);
		}
	}

	private void addObject(DmcSceneObject source, AIEvent event) {
		hatredObject.put(source.getId(), source);
		hatredMeter.put(source.getId(), event.getEventHatredValue());
		damageMeter.put(source.getId(), event.getEventDamage());
	}

	/**
	 * 移除单位
	 * @param id
	 */
	public void removeObject(long id) {
		hatredObject.remove(id);
		hatredMeter.remove(id);
		damageMeter.remove(id);
		if (commonTarget.getId() == id) {
			commonTarget = getMaxHatredTarget();
		}
	}

	private DmcSceneObject getMaxHatredTarget() {
		int max = -1;
		long playerId = 0;
		for (Entry<Long, Integer> entry : hatredMeter.entrySet()) {
			if (max < entry.getValue()) {
				max = entry.getValue();
				playerId = entry.getKey();
			}
		}
		return hatredObject.get(playerId);
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
	public DmcSceneObject getCommonTarget() {
		DmcSceneObject maxObject = getMaxHatredTarget();
		int maxHatred = hatredMeter.get(maxObject.getId());
		int currentHatred = hatredMeter.get(commonTarget.getId());
		if(maxHatred > currentHatred*DictBattleConfig.getValue("overTauntedRate")){
			commonTarget = maxObject;
		}
		return commonTarget;
	}

}
