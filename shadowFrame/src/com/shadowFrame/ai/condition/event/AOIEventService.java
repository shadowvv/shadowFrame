package com.shadowFrame.ai.condition.event;

import com.shadowFrame.ai.DmcSceneObject;
import com.shadowFrame.ai.condition.event.aoiEvent.AOIEvent;
import com.shadowFrame.ai.condition.event.aoiEvent.AOIEventEnum;

/**
 * AOI事件服务
 * 
 * @author shadow
 *
 */
public final class AOIEventService {

	/**
	 * 场景物体移动
	 * 
	 * @param source
	 * @param from
	 * @param to
	 * @param direction
	 */
	public static void onSceneObjectMove(DmcSceneObject source, FPoint3 from, FPoint3 to, FPoint3 direction) {
		AOIEvent event = new AOIEvent(AOIEventEnum.Move, source);
		onSceneObjectEvent(event, source, null);
	}

	/**
	 * 场景物体停止移动
	 * 
	 * @param source
	 * @param position
	 * @param direction
	 */
	public static void onSceneObjectStopMove(DmcSceneObject source, FPoint3 position, FPoint3 direction) {
		AOIEvent event = new AOIEvent(AOIEventEnum.Move, source);
		onSceneObjectEvent(event, source, null);
	}

	/**
	 * 使用技能
	 * 
	 * @param source
	 * @param skillId
	 */
	public static void onSceneObjectUseSkill(DmcSceneObject source, int skillId) {
		AOIEvent event = new AOIEvent(AOIEventEnum.UseSkill, source);
		event.setParam(skillId + "");
		onSceneObjectEvent(event, source, null);
	}

	/**
	 * 结算技能伤害
	 * 
	 * @param source
	 * @param target
	 * @param skillId
	 * @param damage
	 */
	public static void onSceneObjectReleaseSkill(DmcSceneObject source, DmcSceneObject target, int skillId, int dictDamageId,int damage) {
		AOIEvent event = new AOIEvent(AOIEventEnum.ReleaseSkill, source);
		event.setParam(skillId + ":" + dictDamageId + ":" + damage);
		onSceneObjectEvent(event, source, target);
	}

	/**
	 * 添加buff
	 * 
	 * @param source
	 * @param target
	 * @param buffId
	 */
	public static void onSceneObjectAddBuff(DmcSceneObject source, DmcSceneObject target, int buffId) {
		AOIEvent event = new AOIEvent(AOIEventEnum.AddBuff, source);
		event.setParam(buffId + "");
		onSceneObjectEvent(event, source, target);
	}

	/**
	 * 结算buff
	 * 
	 * @param source
	 * @param buffId
	 * @param buffValue
	 */
	public static void onSceneObjectBuffTick(DmcSceneObject source, int buffId, int buffValue) {
		AOIEvent event = new AOIEvent(AOIEventEnum.BuffTick, source);
		event.setParam(buffId + ":" + buffValue);
		onSceneObjectEvent(event, source, null);
	}

	/**
	 * 移除buff
	 * 
	 * @param source
	 * @param buffId
	 */
	public static void onSceneObjectRemoveBuff(DmcSceneObject source, int buffId) {
		AOIEvent event = new AOIEvent(AOIEventEnum.RemoveBuff, source);
		event.setParam(buffId + "");
		onSceneObjectEvent(event, source, null);
	}

	/**
	 * 技能释放结束
	 * 
	 * @param source
	 * @param skillId
	 */
	public static void onSceneObjectUseSkillFinish(DmcSceneObject source, int skillId) {
		AOIEvent event = new AOIEvent(AOIEventEnum.FinishSkill, source);
		event.setParam(skillId + "");
		onSceneObjectEvent(event, source, null);
	}
	
	/**
	 * 死亡
	 * @param source
	 */
	public static void onSceneObjectDead(DmcSceneObject source){
		AOIEvent event = new AOIEvent(AOIEventEnum.Dead, source);
		event.setParam(source.getDictId()+"");
		onSceneObjectEvent(event, source, null);
	}

	/**
	 * 弹刀
	 * 
	 * @param source
	 * @param target
	 */
	public static void onSceneObjectReboundAttack(DmcSceneObject source, DmcSceneObject target) {
		AOIEvent event = new AOIEvent(AOIEventEnum.ReboundAttack, source);
		onSceneObjectEvent(event, source, target);
	}

	private static void onSceneObjectEvent(AOIEvent event, DmcSceneObject source, DmcSceneObject target) {
		for (SceneObject object : source.getScene().getSceneController().getAoiManager().getViewSceneObjects(source)) {
			if (object instanceof DmcSceneObject) {
				if (object.equals(source)) {
					continue;
				}
				if (target != null && object.equals(target)) {
					continue;
				}
				DmcSceneObject dmcObject = (DmcSceneObject) object;
				if(dmcObject.getController() == null){
					continue;
				}
				if(dmcObject.getController().getComponentAI() == null){
					continue;
				}
				if(dmcObject.getType().equals(SceneObjectType.HUMAN) || dmcObject.getType().equals(SceneObjectType.MONSTER) || dmcObject.getType().equals(SceneObjectType.SUMMON)){
					event.addObserver(dmcObject);					
				}
			}
		}
		if (target != null) {
			event.addTarget(target);
		}
		event.dispatchAIEvent();
	}
}
