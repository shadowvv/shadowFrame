package com.game2sky.prilib.core.socket.logic.battle.newAi.strategy;

import java.util.ArrayList;
import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.IAIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.tendency.AITendencyParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.threshold.AIThresholdParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;

/**
 * ai策略参数
 * @author shadow
 *
 */
public class AIStrategyParam {
	
	/**
	 * 策略Id
	 */
	private int id;
	/**
	 * 进入策略的门槛
	 */
	private AIThresholdParam threshold;
	/**
	 * 进入策略的事件
	 */
	private IAIEvent event;
	/**
	 * 策略行为列表
	 */
	private List<AITendencyParam> tendencys;
	
	/**
	 * 
	 * @param id 策略Id
	 * @param threshold 进入策略门槛
	 * @param event 进入策略事件
	 */
	public AIStrategyParam(int id,AIThresholdParam threshold,IAIEvent event) {
		this.id = id;
		this.threshold = threshold;
		this.event = event;
		tendencys = new ArrayList<AITendencyParam>();
	}
	
	/**
	 * 
	 * @return 策略Id
	 */
	public int getId() {
		return id;
	}
	
	/**
	 * 
	 * @return 策略名
	 */
	public String getName(){
		return AIStrategyEnum.getStrategy(id).getName();
	}

	/**
	 * 
	 * @return 进入策略门槛
	 */
	public AIThresholdParam getEnterStrategyThreshold() {
		return threshold;
	}

	/**
	 * 
	 * @return 进入策略事件
	 */
	public IAIEvent getEnterStrategyEvent() {
		return event;
	}

	/**
	 * 添加策略行为
	 * @param tendency 行为
	 */
	public void addTendency(AITendencyParam tendency) {
		tendencys.add(tendency);		
	}

	/**
	 * 
	 * @return 获得行为列表
	 */
	public List<AITendencyParam> getTendencyList() {
		return tendencys;
	}

	/**
	 * 是否可进入策略
	 * @param self ai物体
	 * @param aoiEventList 事件列表
	 * @return
	 */
	public boolean CanEnterStrategy(DmcSceneObject self, List<IAIEvent> aoiEventList) {
		return AIStrategyEnum.getStrategy(id).CanEnterStrategy(self, aoiEventList, this);
	}

	/**
	 * 获得ai行为
	 * @param self ai物体
	 * @param aoiEventList 事件列表
	 * @return ai行为
	 */
	public AITendencyParam getTendency(DmcSceneObject self, List<IAIEvent> aoiEventList) {
		return AIStrategyEnum.getStrategy(id).getTendency(self, aoiEventList, this);
	}

}
