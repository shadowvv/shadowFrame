package com.shadowFrame.ai.hatred;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import com.shadowFrame.ai.AIInternalStaticData;
import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.event.AIEventEnum;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;

/**
 * 仇恨值统计系统
 * 
 * @author shadow
 *
 */
public class AIHatredMeter {

	private Map<Long, SceneObject> hatredObject;
	private Map<Long, Float> hatredMeter;
	private Map<Long, Long> damageMeter;
	private SceneObject commonTarget;

	public AIHatredMeter() {
		hatredObject = new HashMap<Long, SceneObject>();
		hatredMeter = new HashMap<Long, Float>();
		damageMeter = new HashMap<Long, Long>();
	}

	/**
	 * 触发事件
	 * 
	 * @param event
	 *            事件
	 */
	public void onAoiEvent(AIEvent event) {
		if (event.getEventCampType() == AITargetObjectCampEnum.enemy.getId()) {
			SceneObject source = event.getSource();

			if (event.getEventType() == AIEventEnum.Dead.getId()) {
				removeObject(source.getId());
				return;
			}
			if (!hatredObject.containsKey(source.getId())) {
				if (event.getEventType() == AIEventEnum.EnterVigilanceRange.getId() || event.getEventType() == AIEventEnum.ReleaseSkill.getId()) {
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

			float value = event.getEventHatredValue() + hatredMeter.get(source.getId());
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

	private void addObject(SceneObject source, AIEvent event) {
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
		if (commonTarget != null && commonTarget.getId() == id) {
			commonTarget = getMaxHatredTarget();
		}
	}

	private SceneObject getMaxHatredTarget() {
		float max = -1;
		long playerId = 0;
		for (Entry<Long, Float> entry : hatredMeter.entrySet()) {
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
	public List<SceneObject> getAllHatredObjects() {
		return new ArrayList<SceneObject>(hatredObject.values());
	}

	/**
	 * 
	 * @return 仇恨值最高的目标
	 */
	public SceneObject getCommonTarget() {
		if(hatredObject.size() == 0){
			return null;
		}
		SceneObject maxObject = getMaxHatredTarget();
		float maxHatred = hatredMeter.get(maxObject.getId());
		float currentHatred = hatredMeter.get(commonTarget.getId());
		if(maxHatred > currentHatred*AIInternalStaticData.OVER_TAUNTED_RATE){
			commonTarget = maxObject;
		}
		return commonTarget;
	}

}
