package com.game2sky.prilib.core.socket.logic.battle.newAi;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import com.game2sky.prilib.core.socket.logic.battle.newAi.action.AIActionParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEventEnum;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AOIEventService;
import com.game2sky.prilib.core.socket.logic.battle.newAi.hatred.AIHatredMeter;
import com.game2sky.prilib.core.socket.logic.battle.newAi.strategy.AIStrategyEnum;
import com.game2sky.prilib.core.socket.logic.battle.newAi.strategy.AIStrategyParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.target.AITargetObjectCampEnum;
import com.game2sky.prilib.core.socket.logic.battle.newAi.tendency.AITendencyParam;
import com.game2sky.prilib.core.socket.logic.human.state.ActionState;
import com.game2sky.prilib.core.socket.logic.properties.BProperty;
import com.game2sky.prilib.core.socket.logic.scene.unit.DmcSceneObject;
import com.game2sky.prilib.core.socket.logic.scene.unit.SceneObjectType;
import com.game2sky.prilib.core.socket.logic.scene.unit.monster.PhaseEnum;
import com.game2sky.prilib.core.socket.logic.scene.unit.monster.SceneMonsterObject;
import com.game2sky.prilib.core.socket.logic.scene.unit.player.ScenePlayerObject;
import com.game2sky.publib.Globals;
import com.game2sky.publib.communication.common.SystemMessage;
import com.game2sky.publib.communication.game.struct.SystemMessageType;
import com.game2sky.publib.socket.logic.scene.unit.SceneObject;

/**
 * ai模块
 * 
 * @author shadow
 *
 */
public class NewAIComponent {

	/**
	 * 阶段策略数据
	 */
	private Map<PhaseEnum, List<AIStrategyParam>> StrategyData;
	/**
	 * 阶段切换血量百分比
	 */
	private Map<PhaseEnum, Double> phaseHp;

	/**
	 * ai事件收集列表
	 */
	private List<AIEvent> aiEvents;
	/**
	 * ai仇恨管理器
	 */
	private AIHatredMeter hatredMeter;
	
	/**
	 * 当前阶段
	 */
	private PhaseEnum currentPhase;
	/**
	 * 当前策略
	 */
	private AIStrategyParam currentStrategy;
	/**
	 * 当前行为
	 */
	private AITendencyParam currentTendency;
	/**
	 * 当前动作
	 */
	private AIActionParam currentAction;
	
	/**
	 * ai结附的场景物体
	 */
	private DmcSceneObject self;
	/**
	 * ai是否起效
	 */
	private boolean valid;
	/**
	 * ai起效时间
	 */
	private long aiValidTime;
	/**
	 * 时候可以获得下一个行为
	 */
	private boolean canGetNextTendency;
	
	private boolean firstTick;
	private int tickTime;

	/**
	 * 
	 * @param self ai结附的场景物体
	 * @param isAiValid ai是否起效
	 */
	public NewAIComponent(DmcSceneObject self, boolean isAiValid) {
		this.self = self;
		this.valid = isAiValid;
		
		canGetNextTendency = true;

		currentPhase = PhaseEnum.OnePhase;

		hatredMeter = new AIHatredMeter();
		aiValidTime = this.self.getSpawnTime() + Globals.getTimeService().now();

		StrategyData = new HashMap<PhaseEnum, List<AIStrategyParam>>();
		phaseHp = new HashMap<PhaseEnum, Double>();

		aiEvents = new ArrayList<AIEvent>();
		
		firstTick = true;
		tickTime = 0;
	}

	/**
	 * 设置ai数据（只设置一阶段）
	 * @param tendencyData ai数据
	 */
	public void setCommonAIData(List<AITendencyParam> tendencyData) {
		//TODO:
		setAIData(PhaseEnum.OnePhase, 1.0, tendencyData);
	}

	/**
	 * 设置ai阶段数据
	 * @param phase 阶段
	 * @param phaseHpPersent 阶段切换血量
	 * @param tendencyData ai数据
	 */
	public void setAIData(PhaseEnum phase, double phaseHpPersent, List<AITendencyParam> tendencyData) {
		//TODO:
		List<AIStrategyParam> strategyList = new ArrayList<AIStrategyParam>();
		StrategyData.put(phase, strategyList);

		AIStrategyParam commonStrategy = new AIStrategyParam(AIStrategyEnum.CommonStrategy.getId(), tendencyData,null, null,null,null);
		strategyList.add(commonStrategy);

		StrategyData.put(phase, strategyList); 
		phaseHp.put(phase, phaseHpPersent);
	}
	
	/**
	 * 设置ai起效
	 * @param valid
	 */
	public void setValid(boolean valid) {
		this.valid = valid;
	}

	/**
	 * 发生事件
	 * @param event 事件
	 */
	public void onAoiActionEvent(AIEvent event) {
		if (!valid || self.getRoleStateManager().getCurActionState().equals(ActionState.DEAD) || Globals.getTimeService().now() < aiValidTime) {
			return;
		}
		hatredMeter.onAoiEvent(event);
		aiEvents.add(event);
	}
	
	/**
	 * 
	 * @return 仇恨列表数量
	 */
	public int getHatredListSize() {
		return hatredMeter.getSize();
	}
	
	/**
	 * 
	 * @return 事件列表
	 */
	public List<AIEvent> getAIEvents() {
		return aiEvents;
	}

	/**
	 * 
	 * @return 仇恨列表里的所有场景物体
	 */
	public List<DmcSceneObject> getAllHatredObjects() {
		return hatredMeter.getAllHatredObjects();
	}
	
	/**
	 * 
	 * @return 仇恨值最大的目标
	 */
	public DmcSceneObject getCommonTarget() {
		return hatredMeter.getCommonTarget();
	}
	
	/**
	 * 
	 * @return 当前策略
	 */
	public AIStrategyParam getCurrentStrategy() {
		return currentStrategy;
	}
	
	/**
	 * 
	 * @return 当前行为
	 */
	public AITendencyParam getCurrentTendency() {
		return currentTendency;
	}
	
	/**
	 * 
	 * @return 当前动作
	 */
	public AIActionParam getCurrentAction() {
		return currentAction;
	}

	/**
	 * 心跳
	 * @param current 当前事件
	 * @param interval 与上次心跳的间隔时间
	 */
	public void tick(long current, long interval) {
		tickTime++;
		if (!valid || self.getRoleStateManager().getCurActionState().equals(ActionState.DEAD) || Globals.getTimeService().now() < aiValidTime) {
			return;
		}
		if(firstTick){
			firstTick = false;
			//设置AI规则后，重新发起AI事件
			aiEvents.add(AIEvent.CREATE);
			AOIEventService.onSceneObjectMove(self, self.getPos(), self.getPos(), self.getDir());
		}
		if(tickTime > 20){
			tickTime = 0;
			perception();
		}
	}

	private void perception() {
		
		if(StrategyData.size() == 0){
			aiEvents.clear();
			return;
		}
		
		if(isSwitchPhase()){
			currentStrategy = null;
		}
		
		if(currentStrategy == null || currentStrategy.isOver(self,aiEvents)){
			for (AIStrategyParam strategyParam : StrategyData.get(currentPhase)) {
				if(strategyParam.CanEnterStrategy(self)){
					currentStrategy = strategyParam;
					currentStrategy.reset();
					canGetNextTendency = true;
					break;
				}
			}
		}

		if(currentTendency == null || currentTendency.isOver(self,aiEvents)){
			canGetNextTendency = true;
		}
		
		if(canGetNextTendency){
			if(currentAction != null){
				currentAction.stop(self);
			}
			AITendencyParam nextTendency = null;
			nextTendency = currentStrategy.getTendency(self);
			if(nextTendency != null){
				currentTendency = nextTendency;
				currentTendency.reset();
				canGetNextTendency = false;
				currentAction = null;
			}
		}

		if(currentAction == null || currentAction.isOver(self)){
			AIActionParam nextAction = currentTendency.getNextAction(self,currentAction);
			if (nextAction == null) {
				canGetNextTendency = true;
				return;
			} else {
				currentAction = nextAction;
				currentAction.reset();
			}
		}
		
		if(currentAction.isInterrupt(self)){
			currentAction.stop(self);
			canGetNextTendency = true;
			return;
		}
		
		if(currentAction != null){
			currentAction.doAction(self);
			AIActionParam middleAction = currentAction.getMiddleAction(self);
			if(middleAction != null){
				middleAction.doAction(self);
			}
		}

		aiEvents.clear();
		for (SceneObject object : self.getScene().getSceneController().getAoiManager().getViewSceneObjects(self, SceneObjectType.values())) {
			if (object instanceof ScenePlayerObject) {
				ScenePlayerObject human = (ScenePlayerObject) object;
				SystemMessage resp = new SystemMessage(""+currentStrategy.getName()+"	"+currentTendency.getName()+"	"+currentAction.getName(), SystemMessageType.CENTER);
				human.getHuman().push2Gateway(resp);
			}
		}
		System.out.println("***************"+currentStrategy.getName()+"	"+currentTendency.getName()+"	"+currentAction.getName());
	}
	
	private boolean isSwitchPhase(){
		for (Entry<PhaseEnum, Double> phaseEnum : phaseHp.entrySet()) {
			if (phaseEnum.getKey().getId() > currentPhase.getId()) {
				double HPPersent = phaseEnum.getValue();
				double filterHp = self.getBProperty(BProperty.HP_MAX) * HPPersent;
				float currentHp = self.getDmcHp();
				if (filterHp >= currentHp) {
					currentPhase = phaseEnum.getKey();
					aiEvents.clear();
					aiEvents.add(new AIEvent(AIEventEnum.SwitchPhase.getId(), currentPhase.getId()+"", AITargetObjectCampEnum.self.getId(), self));
					return true;
				}
			}
		}
		if (self instanceof SceneMonsterObject) {
			SceneMonsterObject monster = (SceneMonsterObject) self;
			if (phaseHp.containsKey(PhaseEnum.breakShieldPhase)) {
				if (!monster.isHaveShield()) {
					currentPhase = PhaseEnum.breakShieldPhase;
					aiEvents.clear();
					aiEvents.add(new AIEvent(AIEventEnum.SwitchPhase.getId(), currentPhase.getId()+"", AITargetObjectCampEnum.self.getId(), self));
					return true;
				}
			}
		}
		return false;
	}

}
