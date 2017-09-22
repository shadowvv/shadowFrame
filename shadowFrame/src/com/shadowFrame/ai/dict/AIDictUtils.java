package com.shadowFrame.ai.dict;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import com.google.common.base.Strings;
import com.shadowFrame.ai.action.AIActionEnum;
import com.shadowFrame.ai.action.AIActionParam;
import com.shadowFrame.ai.event.AIEvent;
import com.shadowFrame.ai.strategy.AIStrategyParam;
import com.shadowFrame.ai.tendency.AITendencyParam;
import com.shadowFrame.ai.threshold.AIThresholdEnum;
import com.shadowFrame.ai.threshold.AIThresholdParam;

/**
 * TODO ADD FUNCTION_DESC.
 *
 * @author Administrator
 * @version v0.1 2017年9月13日 下午7:17:27  Administrator
 */
public class AIDictUtils {

	/**
	 * 获得Ai策略
	 * 
	 * @param strategys
	 * @return
	 */
	public static List<AIStrategyParam> getStrategy(String strategys){
		List<AIStrategyParam> strartegys = new ArrayList<AIStrategyParam>();
		if(Strings.isNullOrEmpty(strategys) || strategys.equals("0")){
			return strartegys;
		}
		String[] ids = strategys.split(",");
		for (String sid : ids) {
			int id = Integer.parseInt(sid);
			DictAiStrategy config = DictAiStrategy.cache.get(id);
			if(config == null){
				continue;
			}
			List<AIThresholdParam> enterTs = getThresholds(config.getEnterThresholds());
			List<AIThresholdParam> overTs = getThresholds(config.getOverThresholds());
			List<AIEvent> enterEs = getEvents(config.getEnterEvents());
			List<AIEvent> overEs = getEvents(config.getOverEvents());
			List<AITendencyParam> tendencys = getTendencys(config.getTendencys());
			AIStrategyParam strartegy = new AIStrategyParam(config.getStrartegyId(),tendencys,enterTs, enterEs, overTs, overEs);
			strartegys.add(strartegy);			
		}
		return strartegys;
	}

	private static List<AITendencyParam> getTendencys(String tendencys) {
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
		Collections.sort(list, new Comparator<AITendencyParam>() {
			@Override
			public int compare(AITendencyParam o1, AITendencyParam o2) {
				return o2.getPriority() - o1.getPriority();
			}
		});
		return list;
	}

	private static AIActionParam getAction(int actionId) {
		DictAiAction config = DictAiAction.cache.get(actionId);
		if(config == null){
			return null;
		}
		List<AIThresholdParam> enterTs = getThresholds(config.getEnterThresholds());
		List<AIThresholdParam> interruptTs = getThresholds(config.getInterruptThresholds());
		if(config.getActionId() == AIActionEnum.UseSkill.getId()){
			for (AIThresholdParam aiThresholdParam : enterTs) {
				if(aiThresholdParam.getId() == AIThresholdEnum.Range.getId() && aiThresholdParam.getThresholdValue() == -1){
					//TODO:技能释放距离
					aiThresholdParam.setValue(0);
				}
			}
			for (AIThresholdParam aiThresholdParam : interruptTs) {
				if(aiThresholdParam.getId() == AIThresholdEnum.Range.getId() && aiThresholdParam.getThresholdValue() == -1){
					//TODO:技能释放距离
					aiThresholdParam.setValue(0);
				}
			}
		}
		List<AIEvent> enterEs = getEvents(config.getEnterEvents());
		List<AIEvent> interruptEs = getEvents(config.getInterruptEvents());
		AIActionParam middleAction = getAction(config.getMiddleActionId());
		AIActionParam action = new AIActionParam(config.getActionId(), config.getTargetCampType(), config.getParam(), middleAction,enterTs, enterEs, interruptTs, interruptEs);
		return action;
	}

	private static List<AIEvent> getEvents(String enterEvents) {
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

	private static List<AIThresholdParam> getThresholds(String enterThresholds) {
		List<AIThresholdParam> list = new ArrayList<AIThresholdParam>();
		if(Strings.isNullOrEmpty(enterThresholds) || enterThresholds.equals("0")){
			return list;
		}
		String[] ids = enterThresholds.split(",");
		for (String sid : ids) {
			int id = Integer.parseInt(sid);
			DictAiThreshold config = DictAiThreshold.cache.get(id);
			AIThresholdParam threshold = new AIThresholdParam(config.getThresholdId(), config.getValue(), config.getTargetCampType(), config.getCampareType());
			list.add(threshold);
		}
		return list;
	}
	
	/**
	 * 是否所有的ai事件都存在
	 * 
	 * @param enterEvents 事件ids
	 * @return
	 */
	public static boolean allEventsExist(String enterEvents){
		if(Strings.isNullOrEmpty(enterEvents) || enterEvents.equals("0")){
			return true;
		}
		String[] ids = enterEvents.split(",");
		for (String sid : ids) {
			int id = Integer.parseInt(sid);
			if(DictAiEvent.cache.get(id) == null){
				return false;
			}
		}
		return true;
	}
	
	/**
	 * 是否所有的ai门槛都存在
	 * 
	 * @param enterThresholds 门槛ids
	 * @return
	 */
	public static boolean allThresholdsExist(String enterThresholds){
		if(Strings.isNullOrEmpty(enterThresholds) || enterThresholds.equals("0")){
			return true;
		}
		String[] ids = enterThresholds.split(",");
		for (String sid : ids) {
			int id = Integer.parseInt(sid);
			if(DictAiThreshold.cache.get(id) == null){
				return false;
			}
		}
		return true;
	}
	
	/**
	 * 是否所有的ai行为都存在
	 * 
	 * @param tendencys 行为ids
	 * @return
	 */
	public static boolean allTendencyExist(String tendencys){
		if(Strings.isNullOrEmpty(tendencys) || tendencys.equals("0")){
			return true;
		}
		String[] ids = tendencys.split(",");
		for (String sid : ids) {
			int id = Integer.parseInt(sid);
			if(DictAiTendency.cache.get(id) == null){
				return false;
			}
		}
		return true;
	}
	
}
