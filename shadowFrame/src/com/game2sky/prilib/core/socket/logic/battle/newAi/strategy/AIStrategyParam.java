package com.game2sky.prilib.core.socket.logic.battle.newAi.strategy;

import java.util.ArrayList;
import java.util.List;

import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.tendency.AITendencyParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.threshold.AIThresholdParam;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;
import com.game2sky.publib.Globals;

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
	private List<AIThresholdParam> enterThresholds;
	/**
	 * 进入策略的事件
	 */
	private List<AIEvent> enterEvents;
	/**
	 * 策略行为列表
	 */
	private List<AITendencyParam> tendencys;
	
	/**
	 * 进入策略的门槛
	 */
	private List<AIThresholdParam> overThresholds;
	/**
	 * 进入策略的事件
	 */
	private List<AIEvent> overEvents;
	
	/**
	 * 开始时间
	 */
	private long beginTime;
	
	
	
	/**
	 * 
	 * @param id 策略Id
	 * @param threshold 进入策略门槛
	 * @param event 进入策略事件
	 */
	public AIStrategyParam(int id,List<AIThresholdParam> enterThresholds,List<AIEvent> enterEvents,List<AIThresholdParam> overThresholds,List<AIEvent> overEvents) {
		this.id = id;
		this.enterThresholds = enterThresholds;
		this.enterEvents = enterEvents;
		this.overThresholds = overThresholds;
		this.overEvents = overEvents;
		this.beginTime = Globals.getTimeService().now();
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
		return enterThresholds;
	}

	/**
	 * 
	 * @return 进入策略事件
	 */
	public List<AIEvent> getEnterStrategyEvents() {
		return enterEvents;
	}
	
	/**
	 * 
	 * @return 结束事件
	 */
	public List<AIEvent> getOverEvents() {
		return overEvents;
	}
	
	/**
	 * 
	 * @return 结束门槛
	 */
	public List<AIThresholdParam> getOverThresholds() {
		return overThresholds;
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
	 * 
	 * @return 开始时间
	 */
	public long getBeginTime() {
		return beginTime;
	}

	/**
	 * 重置
	 */
	public void reset() {
		this.beginTime = Globals.getTimeService().now();
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

	/**
	 * 策略是否结束
	 * @param self
	 * @param aiEvents
	 * @return
	 */
	public boolean isOver(DmcSceneObject self, List<AIEvent> aiEvents) {
		return AIStrategyEnum.getStrategy(id).isOverStrategy(self, this);
	}

}
