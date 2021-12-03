package com.shadowFrame.ai.strategy;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.tendency.AITendencyParam;
import com.shadowFrame.util.MathUtil;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
 * 战斗策略
 *
 * @author shadow
 * @version v0.1 2017年11月7日 上午11:04:04  shadow
 */
public class AIBattleStrategy implements IAIStrategy {

    @Override
    public AITendencyParam getTendency(SceneObject self, AIStrategyParam strategyParam, Collection<AIEvent> aiEvents) {
        List<AITendencyParam> canDo = new ArrayList<AITendencyParam>();

        List<AITendencyParam> params = strategyParam.getTendencyList();
        for (int i = 0; i < params.size(); i++) {
            List<AITendencyParam> samePriority = new ArrayList<AITendencyParam>();
            AITendencyParam param1 = params.get(i);
            samePriority.add(param1);
            int j = i + 1;
            for (; j < params.size(); j++) {
                AITendencyParam param2 = params.get(j);
                if (param1.getPriority() == param2.getPriority()) {
                    samePriority.add(param2);
                } else {
                    break;
                }
            }
            for (AITendencyParam t1 : samePriority) {
                if (t1.CanEnterTendency(self, aiEvents)) {
                    canDo.add(t1);
                }
            }
            if (canDo.size() != 0) {
                AITendencyParam nextTendency = getTendencyParam(canDo);
                return nextTendency;
            }
            i = j - 1;
        }
        return null;
    }

    private AITendencyParam getTendencyParam(List<AITendencyParam> samePriority) {
        int[] weights = new int[samePriority.size()];
        for (int i = 0; i < samePriority.size(); i++) {
            weights[i] = samePriority.get(i).getWeight();
        }
        int index = MathUtil.randomSelectByFrequency(weights);
        if (index == -1) {
            return null;
        }
        return samePriority.get(index);
    }

}
