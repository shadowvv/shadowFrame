package com.shadowFrame.ai.condition.event;

import com.google.common.base.Strings;


/**
 * ai事件类型
 * @author shadow
 *
 */
public enum AIEventEnum {
	/**
	 * 空事件
	 */
	EmptyEvent(0,new IAIEventOperation(){
		
		@Override
		public long getEventDamage(AIEvent event) {
			return 0;
		}
		
		@Override
		public float getEventHatredValue(AIEvent event) {
			return 0;
		}
		
		@Override
		public String getMainParam(String param) {
			return "";
		}
		
	}),
	/**
	 * 创建
	 */
	Create(1,new IAIEventOperation(){
		
		@Override
		public long getEventDamage(AIEvent event) {
			return 0;
		}
		
		@Override
		public float getEventHatredValue(AIEvent event) {
			return 0;
		}
		
		@Override
		public String getMainParam(String param) {
			return "";
		}
		
	}),
	/**
	 * 进入警戒区域
	 */
	EnterVigilanceRange(2,new IAIEventOperation(){
		
		@Override
		public long getEventDamage(AIEvent event) {
			return 0;
		}
		
		@Override
		public float getEventHatredValue(AIEvent event) {
			return 1;
		}
		
		@Override
		public String getMainParam(String param) {
			return "";
		}
		
	}),
	/**
	 * 使用技能
	 */
	UseSkill(3,new IAIEventOperation(){
		
		@Override
		public long getEventDamage(AIEvent event) {
			return 0;
		}
		
		@Override
		public float getEventHatredValue(AIEvent event) {
			return 0;
		}
		
		@Override
		public String getMainParam(String param) {
			return param;
		}
		
	}),
	/**
	 * 结算技能
	 */
	ReleaseSkill(4,new IAIEventOperation(){
		
		@Override
		public long getEventDamage(AIEvent event) {
			String param = event.getEventParam();
			if(Strings.isNullOrEmpty(param)){
				return 0;
			}
			String[] params = param.split(":");
			long damage = Long.parseLong(params[1]);
			return damage;
		}
		
		@Override
		public float getEventHatredValue(AIEvent event) {
			String param = event.getEventParam();
			if(Strings.isNullOrEmpty(param)){
				return 0;
			}
			String[] params = param.split(":");
			@SuppressWarnings("unused")
			int skillDamagetId = Integer.parseInt(params[1]);
			long damage = Long.parseLong(params[2]);
			float fianlHatred = damage;
			return fianlHatred;
		}
		
		@Override
		public String getMainParam(String param) {
			if(Strings.isNullOrEmpty(param)){
				return "";
			}
			String[] params = param.split(":");
			return params[0];
		}
		
	}),
	/**
	 * 使用技能结束
	 */
	finishSkill(5,new IAIEventOperation(){
		
		@Override
		public long getEventDamage(AIEvent event) {
			return 0;
		}
		
		@Override
		public float getEventHatredValue(AIEvent event) {
			return 0;
		}
		
		@Override
		public String getMainParam(String param) {
			return param;
		}
		
	}),
	/**
	 * 弹刀
	 */
	ReboundAttack(6,new IAIEventOperation(){
		
		@Override
		public long getEventDamage(AIEvent event) {
			return 0;
		}
		
		@Override
		public float getEventHatredValue(AIEvent event) {
			return 0;
		}
		
		@Override
		public String getMainParam(String param) {
			return "";
		}
		
	}),
	/**
	 * 切换状态
	 */
	SwitchPhase(7,new IAIEventOperation(){
		
		@Override
		public long getEventDamage(AIEvent event) {
			return 0;
		}
		
		@Override
		public float getEventHatredValue(AIEvent event) {
			return 0;
		}
		
		@Override
		public String getMainParam(String param) {
			return param;
		}
		
	}),
	/**
	 * 添加buff
	 */
	AddBuff(8,new IAIEventOperation(){
		
		@Override
		public long getEventDamage(AIEvent event) {
			return 0;
		}
		
		@Override
		public float getEventHatredValue(AIEvent event) {
			return 0;
		}
		
		@Override
		public String getMainParam(String param) {
			return param;
		}
		
	}),
	/**
	 * 移除buff
	 */
	RemoveBuff(9,new IAIEventOperation(){
		
		@Override
		public long getEventDamage(AIEvent event) {
			return 0;
		}
		
		@Override
		public float getEventHatredValue(AIEvent event) {
			return 0;
		}
		
		@Override
		public String getMainParam(String param) {
			return param;
		}
		
	}),
	/**
	 * buff tick结算
	 */
	BuffTick(10,new IAIEventOperation(){
		
		@Override
		public long getEventDamage(AIEvent event) {
			return 0;
		}
		
		@Override
		public float getEventHatredValue(AIEvent event) {
			return 0;
		}
		
		@Override
		public String getMainParam(String param) {
			if(Strings.isNullOrEmpty(param)){
				return "";
			}
			String[] params = param.split(":");
			return params[0];
		}
		
	}),
	/**
	 * 死亡
	 */
	Dead(11,new IAIEventOperation(){
		
		@Override
		public long getEventDamage(AIEvent event) {
			return 0;
		}
		
		@Override
		public float getEventHatredValue(AIEvent event) {
			return 0;
		}
		
		@Override
		public String getMainParam(String param) {
			return param;
		}
		
	}),
	;
	
	interface IAIEventOperation{
		
		/**
		 * 仇恨值
		 * @param event
		 * @return
		 */
		public float getEventHatredValue(AIEvent event);

		/**
		 * 伤害
		 * @param event
		 * @return
		 */
		public long getEventDamage(AIEvent event);

		/**
		 * 获得主要参数
		 * @param param
		 * @return
		 */
		public String getMainParam(String param);
		
	}
	
	private static AIEventEnum[] enums = AIEventEnum.values();

	/**
	 * 获得动作
	 * @param id 动作id
	 * @return
	 */
	public static AIEventEnum getEvent(int id) {
		for (AIEventEnum aiEnum : enums) {
			if (aiEnum.id == id) {
				return aiEnum;
			}
		}
		return null;
	}
	
	private int id;
	private IAIEventOperation operation;
	
	private AIEventEnum(int id,IAIEventOperation operation) {
		this.id = id;
		this.operation = operation;
	}

	/**
	 * 
	 * @return id
	 */
	public int getId() {
		return id;
	}

	/**
	 * 获得事件仇恨值
	 * @param event
	 * @return
	 */
	public float getEventHatredValue(AIEvent event) {
		return operation.getEventHatredValue(event);
	}

	/**
	 * 获得事件伤害
	 * @param event
	 * @return
	 */
	public long getEventDamage(AIEvent event) {
		return operation.getEventDamage(event);
	}

	/**
	 * 
	 * @return 获得主要参数
	 */
	public String getMainParam(String param) {
		return operation.getMainParam(param);
	}
}
