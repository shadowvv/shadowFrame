package com.shadowFrame.ai.dict;

import com.google.common.base.Strings;
import com.shadowFrame.ai.action.AIActionParam;
import com.shadowFrame.ai.condition.AIAndCondition;
import com.shadowFrame.ai.condition.AIOrCondition;
import com.shadowFrame.ai.condition.AbstractAICondition;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.condition.threshold.AIThresholdParam;
import com.shadowFrame.ai.strategy.AIStrategyParam;
import com.shadowFrame.ai.tendency.AITendencyParam;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * ai数据解析
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
    public static List<AIStrategyParam> getStrategy(String strategys) {
        List<AIStrategyParam> strartegys = new ArrayList<AIStrategyParam>();
        if (Strings.isNullOrEmpty(strategys) || strategys.equals("0")) {
            return strartegys;
        }
        String[] ids = strategys.split("&&");
        for (String sid : ids) {
            int id = Integer.parseInt(sid);
            DictAiStrategy config = DictAiStrategy.cache.get(id);
            if (config == null) {
                continue;
            }
            AbstractAICondition enter = getAICondition(config.getEnterCondition());
            AbstractAICondition over = getAICondition(config.getOverCondition());
            List<AITendencyParam> tendencys = getTendencys(config.getTendencys());
            AIStrategyParam strartegy = new AIStrategyParam(config.getId(), config.getStrartegyId(), config.getParam(), tendencys, enter, over);
            strartegys.add(strartegy);
        }
        return strartegys;
    }

    private static List<AITendencyParam> getTendencys(String tendencys) {
        List<AITendencyParam> list = new ArrayList<AITendencyParam>();
        if (Strings.isNullOrEmpty(tendencys) || tendencys.equals("0")) {
            return list;
        }
        String[] ids = tendencys.split(",");
        for (String sid : ids) {
            int id = Integer.parseInt(sid);
            DictAiTendency config = DictAiTendency.cache.get(id);
            AbstractAICondition enter = getAICondition(config.getEnterCondition());
            AbstractAICondition over = getAICondition(config.getOverCondition());
            List<AIActionParam> actions = new ArrayList<AIActionParam>();
            addAiAction(actions, getAction(config.getPerAction()));
            addAiAction(actions, getAction(config.getMainAction1()));
            addAiAction(actions, getAction(config.getMainAction2()));
            addAiAction(actions, getAction(config.getMainAction3()));
            addAiAction(actions, getAction(config.getClearAction()));
            for (int i = 0; i < actions.size(); i++) {
                int j = i + 1;
                if (actions.size() == j) {
                    break;
                }
                actions.get(i).setNextAction(actions.get(j));
            }
            AIActionParam firstAction = actions.get(0);
            List<AITendencyParam> nextList = getTendencys(config.getNextTendency() + "");
            AITendencyParam next = null;
            if (nextList.size() > 0) {
                next = nextList.get(0);
            }
            AITendencyParam tendency = new AITendencyParam(config.getId(), config.getTendencyId(), config.getParam(), config.getPriority(), config.getWeight(), firstAction, enter, over, next, config.getDoTimes());
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

    private static void addAiAction(List<AIActionParam> actions, AIActionParam action) {
        if (action != null) {
            actions.add(action);
        }
    }

    private static AIActionParam getAction(int actionId) {
        DictAiAction config = DictAiAction.cache.get(actionId);
        if (config == null) {
            return null;
        }
        AbstractAICondition interrupt = getAICondition(config.getInterruptCondition());
        if (interrupt != null) {
            interrupt.fixThreshold(config);
        }
        AbstractAICondition over = getAICondition(config.getOverCondition());
        if (over != null) {
            over.fixThreshold(config);
        }
        AIActionParam action = new AIActionParam(config.getId(), config.getActionId(), config.getTargetCampType(), config.getParam(), interrupt, over);
        return action;
    }

    /**
     * ai判定条件
     *
     * @param conditions
     * @return
     */
    public static AbstractAICondition getAICondition(String conditions) {
        AbstractAICondition condition = null;
        if (Strings.isNullOrEmpty(conditions) || conditions.equals("0")) {
            return condition;
        }
        if (conditions.contains("]||[")) {
            String[] conditionStr = conditions.split("\\]\\|\\|\\[");
            List<AbstractAICondition> conditionList = getConditions(conditionStr);
            condition = new AIOrCondition();
            condition.setConditions(conditionList);
        } else if (conditions.contains("]&&[")) {
            String[] conditionStr = conditions.split("\\]\\&\\&\\[");
            List<AbstractAICondition> conditionList = getConditions(conditionStr);
            condition = new AIAndCondition();
            condition.setConditions(conditionList);
        } else {
            condition = getCondition(conditions);
        }
        return condition;
    }

    private static List<AbstractAICondition> getConditions(String[] conditionStr) {
        List<AbstractAICondition> conditionList = new ArrayList<AbstractAICondition>();
        for (int i = 0; i < conditionStr.length; i++) {
            String temp = conditionStr[i];
            if (temp.contains("[")) {
                temp = temp.substring(1);
            } else if (temp.contains("]")) {
                temp = temp.substring(0, temp.length() - 1);
            }
            conditionList.add(getCondition(temp));
        }
        return conditionList;
    }

    private static AbstractAICondition getCondition(String conditions) {
        if (conditions.contains("&&")) {
            return getAndCondition(conditions);
        } else if (conditions.contains("||")) {
            return getOrCondition(conditions);
        } else {
            return getAndCondition(conditions);
        }
    }

    private static AbstractAICondition getAndCondition(String conditions) {
        String[] conditonStr = conditions.split("\\&\\&");
        List<AIThresholdParam> thresholds = new ArrayList<AIThresholdParam>();
        List<AIEvent> events = new ArrayList<AIEvent>();
        for (String temp : conditonStr) {
            String[] k_v = temp.split(":");
            int k = Integer.parseInt(k_v[0]);
            int v = Integer.parseInt(k_v[1]);
            if (k == 1) {
                DictAiThreshold config = DictAiThreshold.cache.get(v);
                if (config == null) {
                    continue;
                }
                AIThresholdParam threshold = new AIThresholdParam(config.getThresholdId(), config.getValue(), config.getTargetCampType(), config.getCampareType());
                thresholds.add(threshold);
            } else if (k == 2) {
                DictAiEvent config = DictAiEvent.cache.get(v);
                if (config == null) {
                    continue;
                }
                AIEvent event = new AIEvent(config.getEventId(), config.getParam(), config.getTargetCampType(), null);
                events.add(event);
            }
        }
        AbstractAICondition condition = new AIAndCondition();
        condition.setEvents(events);
        condition.setThresholds(thresholds);
        return condition;
    }

    private static AbstractAICondition getOrCondition(String conditions) {
        String[] conditonStr = conditions.split("\\|\\|");
        List<AIThresholdParam> thresholds = new ArrayList<AIThresholdParam>();
        List<AIEvent> events = new ArrayList<AIEvent>();
        for (String temp : conditonStr) {
            String[] k_v = temp.split(":");
            int k = Integer.parseInt(k_v[0]);
            int v = Integer.parseInt(k_v[1]);
            if (k == 1) {
                DictAiThreshold config = DictAiThreshold.cache.get(v);
                if (config == null) {
                    continue;
                }
                AIThresholdParam threshold = new AIThresholdParam(config.getThresholdId(), config.getValue(), config.getTargetCampType(), config.getCampareType());
                thresholds.add(threshold);
            } else if (k == 2) {
                DictAiEvent config = DictAiEvent.cache.get(v);
                if (config == null) {
                    continue;
                }
                AIEvent event = new AIEvent(config.getEventId(), config.getParam(), config.getTargetCampType(), null);
                events.add(event);
            }
        }
        AbstractAICondition condition = new AIOrCondition();
        condition.setEvents(events);
        condition.setThresholds(thresholds);
        return condition;
    }

    /**
     * 是否所有的ai事件都存在
     *
     * @param enterEvents 事件ids
     * @return
     */
    public static boolean allEventsExist(String enterEvents) {
        if (Strings.isNullOrEmpty(enterEvents) || enterEvents.equals("0")) {
            return true;
        }
        String[] ids = enterEvents.split(",");
        for (String sid : ids) {
            int id = Integer.parseInt(sid);
            if (DictAiEvent.cache.get(id) == null) {
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
    public static boolean allThresholdsExist(String enterThresholds) {
        if (Strings.isNullOrEmpty(enterThresholds) || enterThresholds.equals("0")) {
            return true;
        }
        String[] ids = enterThresholds.split(",");
        for (String sid : ids) {
            int id = Integer.parseInt(sid);
            if (DictAiThreshold.cache.get(id) == null) {
                return false;
            }
        }
        return true;
    }

    /**
     * 检测条件是否存在
     *
     * @param conditions
     * @return
     */
    public static boolean allConditionExist(String conditions) {
        if (Strings.isNullOrEmpty(conditions) || conditions.equals("0")) {
            return true;
        }
        if (conditions.contains("]||[")) {
            String[] conditionStr = conditions.split("\\]\\|\\|\\[");
            return checkCondition(conditionStr);
        } else if (conditions.contains("]&&[")) {
            String[] conditionStr = conditions.split("\\]\\&\\&\\[");
            return checkCondition(conditionStr);
        } else {
            if (conditions.contains("&&")) {
                String[] conditionStr = conditions.split("\\&\\&");
                return checkCondition(conditionStr);
            } else if (conditions.contains("||")) {
                String[] conditionStr = conditions.split("\\|\\|");
                return checkCondition(conditionStr);
            }
            return checkCondition(conditions);
        }
    }

    private static boolean checkCondition(String... conditionStr) {
        for (String temp : conditionStr) {
            if (temp.contains("[")) {
                temp = temp.substring(1);
            } else if (temp.contains("]")) {
                temp = temp.substring(0, temp.length() - 1);
            }
            String[] k_v = temp.split(":");
            int k = Integer.parseInt(k_v[0]);
            int v = Integer.parseInt(k_v[1]);
            if (k == 1) {
                DictAiThreshold config = DictAiThreshold.cache.get(v);
                if (config == null) {
                    return false;
                }
            } else if (k == 2) {
                DictAiEvent config = DictAiEvent.cache.get(v);
                if (config == null) {
                    return false;
                }
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
    public static boolean allTendencyExist(String tendencys) {
        if (Strings.isNullOrEmpty(tendencys) || tendencys.equals("0")) {
            return true;
        }
        String[] ids = tendencys.split(",");
        for (String sid : ids) {
            int id = Integer.parseInt(sid);
            if (DictAiTendency.cache.get(id) == null) {
                return false;
            }
        }
        return true;
    }

}
