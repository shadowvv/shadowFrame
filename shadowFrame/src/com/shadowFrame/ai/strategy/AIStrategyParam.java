package com.game2sky.prilib.core.socket.logic.battle.newAi.strategy;

import java.util.ArrayList;
import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEvent;
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
	private List<AIThresholdParam> thresholds;
	/**
	 * 进入策略的事件
	 */
	private List<AIEvent> events;
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
	public AIStrategyParam(int id,List<AIThresholdParam> thresholds,List<AIEvent> events) {
		this.id = id;
		this.thresholds = thresholds;
		this.events = events;
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
	public List<AIThresholdParam> getEnterStrategyThresholds() {
		return thresholds;
	}

	/**
	 * 
	 * @return 进入策略事件
	 */
	public List<AIEvent> getEnterStrategyEvents() {
		return events;
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
	 * @return
	 */
	public boolean CanEnterStrategy(DmcSceneObject self) {
		return AIStrategyEnum.getStrategy(id).CanEnterStrategy(self, this);
	}

	/**
	 * 获得ai行为
	 * @param self ai物体
	 * @return ai行为
	 */
	public AITendencyParam getTendency(DmcSceneObject self) {
		return AIStrategyEnum.getStrategy(id).getTendency(self, this);
	}

	public boolean isOver(DmcSceneObject self, List<AIEvent> aiEvents) {
		return true;
	}

	public void reset() {
		
	}

}
