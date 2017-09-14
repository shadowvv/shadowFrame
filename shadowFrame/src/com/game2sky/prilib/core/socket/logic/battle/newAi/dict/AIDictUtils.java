package com.game2sky.prilib.core.socket.logic.battle.newAi.dict;

import java.util.ArrayList;
import java.util.List;

import com.game2sky.prilib.core.dict.domain.DictAIStrategy;
import com.game2sky.prilib.core.dict.domain.DictAiAction;
import com.game2sky.prilib.core.dict.domain.DictAiEvent;
import com.game2sky.prilib.core.dict.domain.DictAiTendency;
import com.game2sky.prilib.core.dict.domain.DictAiThreshold;
import com.game2sky.prilib.core.socket.logic.battle.newAi.action.AIActionParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.event.AIEvent;
import com.game2sky.prilib.core.socket.logic.battle.newAi.strategy.AIStrategyParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.tendency.AITendencyParam;
import com.game2sky.prilib.core.socket.logic.battle.newAi.threshold.AIThresholdParam;
import com.google.common.base.Strings;

/**
 * TODO ADD FUNCTION_DESC.
 *
 * @author Administrator
 * @version v0.1 2017年9月13日 下午7:17:27  Administrator
 */
public class AIDictUtils {

	public AIStrategyParam getStrategy(DictAIStrategy config){
		List<AIThresholdParam> enterTs = getThresholds(config.getEnterThresholds());
		List<AIThresholdParam> overTs = getThresholds(config.getOverThresholds());
		List<AIEvent> enterEs = getEvents(config.getEnterEvents());
		List<AIEvent> overEs = getEvents(config.getOverEvents());
		List<AITendencyParam> tendencys = getTendencys(config.getTendencys());
		AIStrategyParam strartegy = new AIStrategyParam(config.getStrartegyId(),tendencys,enterTs, enterEs, overTs, overEs);
		return strartegy;
	}

	private List<AITendencyParam> getTendencys(String tendencys) {
		List<AITendencyParam> list = new ArrayList<AITendencyParam>();
		if(Strings.isNullOrEmpty(tendencys) || tendencys.equals("0")){
			return list;
		}
		String[] ids = tendencys.split(",");
		for (String sid : ids) {
			int id = Integer.parseInt(sid);
			DictAiTendency config = DictAiTendency.cache.get(id);
			List<AIThresholdParam> overTs = getThresholds(config.getOverThresholds());
			List<AIEvent> overEs = getEvents(config.getOverEvents());
			AIActionParam firstAction = null;
			AIActionParam perAction = getAction(config.getPerAction());
			AIActionParam mainAction = getAction(config.getMainAction());
			AIActionParam clearAction = getAction(config.getClearAction());
			if(perAction != null){
				firstAction = perAction;
				perAction.setNextAction(mainAction);
			}
			if(mainAction != null){
				if(firstAction == null){
					firstAction = mainAction;
				}
				mainAction.setNextAction(clearAction);
			}
			if(clearAction != null){
				if(firstAction == null){
					firstAction = clearAction;
				}
			}
			AITendencyParam tendency = new AITendencyParam(config.getTendencyId(), config.getPriority(), config.getWeight(), firstAction, overTs, overEs);
			list.add(tendency);
		}
		return list;
	}

	private AIActionParam getAction(int actionId) {
		DictAiAction config = DictAiAction.cache.get(actionId);
		List<AIThresholdParam> enterTs = getThresholds(config.getEnterThresholds());
		List<AIThresholdParam> interruptTs = getThresholds(config.getInterruptThresholds());
		List<AIEvent> enterEs = getEvents(config.getEnterEvents());
		List<AIEvent> interruptEs = getEvents(config.getInterruptEvents());
		AIActionParam middleAction = getAction(config.getMiddleActionId());
		AIActionParam action = new AIActionParam(config.getActionId(), config.getTargetCampType(), config.getParam(), middleAction,enterTs, enterEs, interruptTs, interruptEs);
		return action;
	}

	private List<AIEvent> getEvents(String enterEvents) {
		List<AIEvent> list = new ArrayList<AIEvent>();
		if(Strings.isNullOrEmpty(enterEvents) || enterEvents.equals("0")){
			return list;
		}
		String[] ids = enterEvents.split(",");
		for (String sid : ids) {
			int id = Integer.parseInt(sid);
			DictAiEvent config = DictAiEvent.cache.get(id);
			AIEvent event = new AIEvent(config.getEventId(), config.getParam(), config.getTargetCampType(), null);
			list.add(event);
		}
		return list;
	}

	private List<AIThresholdParam> getThresholds(String enterThreshold) {
		List<AIThresholdParam> list = new ArrayList<AIThresholdParam>();
		if(Strings.isNullOrEmpty(enterThreshold) || enterThreshold.equals("0")){
			return list;
		}
		String[] ids = enterThreshold.split(",");
		for (String sid : ids) {
			int id = Integer.parseInt(sid);
			DictAiThreshold config = DictAiThreshold.cache.get(id);
			AIThresholdParam threshold = new AIThresholdParam(config.getThresholdId(), config.getValue(), config.getTargetCampType(), config.getCampareType());
			list.add(threshold);
		}
		return list;
	}
	
}
