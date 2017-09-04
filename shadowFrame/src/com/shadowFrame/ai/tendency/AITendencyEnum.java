package com.game2sky.prilib.core.socket.logic.battle.newAi.tendency;

import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.action.AOIActionParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIEvent;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;


/**
 * ai行为枚举
 * @author shadow
 *
 */
public enum AITendencyEnum {

	/**
	 * 警戒行为
	 */
	Vigilance(1,"Vigilance",new AIVigilanceTendency()),
	/**
	 * 战斗行为
	 */
	Battle(2,"Battle",new AIBattleTendency()),
	/**
	 * 逃跑行为
	 */
	Escape(3,"Escape",new AIEscapeTendency()),
	;
	
	private static AITendencyEnum[] enums = AITendencyEnum.values();

	/**
	 * 获得门槛
	 * @param id 门槛Id
	 * @return
	 */
	public static AITendencyEnum getTendency(int id) {
		for (AITendencyEnum aiEnum : enums) {
			if (aiEnum.id == id) {
				return aiEnum;
			}
		}
		return null;
	}
	
	private int id;
	private String name;
	private IAITendency tendency;
	
	private AITendencyEnum(int id,String name,IAITendency tendency) {
		this.id = id;
		this.name = name;
		this.tendency = tendency;
	}
	
	/**
	 * 
	 * @return 行为id
	 */
	public int getId() {
		return id;
	}
	
	/**
	 * 
	 * @return 行为名
	 */
	public String getName() {
		return name;
	}

	/**
	 * 停止行为
	 */
	public void stop() {
		tendency.stop();
	}

	/**
	 * 获得行为的下一个动作
	 * @param self ai绑定的单位
	 * @param aoiEventList 事件集合
	 * @param param 行为参数
	 * @param currentAction 当前动作
	 * @return 下一个动作
	 */
	public AOIActionParam getNextAction(DmcSceneObject self, List<IAIEvent> aoiEventList, AITendencyParam param, AOIActionParam currentAction) {
		return tendency.getNextAction(self, aoiEventList, param, currentAction);
	}

	/**
	 * 是否可进入行为
	 * @param self ai绑定的单位
	 * @param aoiEventList 事件集合
	 * @param param 行为参数
	 * @return
	 */
	public boolean CanEnterTendency(DmcSceneObject self, List<IAIEvent> aoiEventList, AITendencyParam param) {
		return tendency.CanEnterTendency(self, aoiEventList, param);
	}
	
}
