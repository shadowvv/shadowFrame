package com.game2sky.prilib.core.socket.logic.battle.newAi.event;

import com.game2sky.prilib.core.socket.logic.battle.newAi.target.AITargetObjectCampEnum;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * ai事件参数
 * @author shadow
 *
 */
public class AIEvent {
	
	/**
	 * 空事件
	 */
	public static final AIEvent EMPTY_EVENT = new AIEvent(AIEventEnum.EmptyEvent, "", AITargetObjectCampEnum.self,null);
	/**
	 * 创建物体事件
	 */
	public static final AIEvent CREATE = new AIEvent(AIEventEnum.Create, "", AITargetObjectCampEnum.self,null);
	
	private AIEventEnum type;
	private AITargetObjectCampEnum campType;
	private String param;
	private DmcSceneObject source;

	/**
	 * 
	 * @param type 事件类型
	 * @param param 事件参数
	 * @param campType 事件目标类型
	 */
	public AIEvent(AIEventEnum type,String param,AITargetObjectCampEnum campType,DmcSceneObject source) {
		this.type = type;
		this.campType = campType;
		this.param = param;
		this.source = source;
	}
	
	/**
	 * 
	 * @return 事件类型
	 */
	public AIEventEnum getEventType() {
		return type;
	}

	/**
	 * 
	 * @return 事件参数
	 */
	public String getEventParam() {
		return param;
	}

	/**
	 * 
	 * @return 事件目标类型
	 */
	public AITargetObjectCampEnum getEventCampType() {
		return campType;
	}

	/**
	 * 
	 * @return 事件发起者
	 */
	public DmcSceneObject getSource() {
		return source;
	}

	/**
	 * 
	 * @return 事件仇恨值
	 */
	public int getEventHatredValue() {
		return type.getEventHatredValue(this);
	}

	/**
	 * 事件是否相符
	 * @param aiEvent
	 * @return
	 */
	public boolean match(AIEvent aiEvent) {
		if(this.equals(EMPTY_EVENT) || aiEvent.equals(EMPTY_EVENT)){
			return true;
		}
		if(!aiEvent.getEventType().equals(type)){
			return false;
		}
		if(!aiEvent.getEventCampType().equals(campType)){
			return false;
		}
		if(aiEvent.getEventParam() == param){
			return false;
		}
		return true;
	}

	public Long getEventDamage() {
		return type.getEventDamage();
	}

}
