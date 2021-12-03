package com.shadowFrame.ai.dict;

import com.shadowFrame.ai.condition.threshold.AIThresholdEnum;
import com.shadowFrame.ai.condition.threshold.AIValueCompareEnum;
import com.shadowFrame.ai.target.AITargetObjectCampEnum;

import java.util.HashMap;
import java.util.Map;

/**
 * ai门槛表
 *
 * @author Administrator
 * @version v0.1 2017年9月16日 下午3:07:10  Administrator
 */
public class DictAiThreshold extends DictAiThresholdVO {

    public static Map<Integer, DictAiThreshold> cache = new HashMap<Integer, DictAiThreshold>();

    @Override
    public boolean checkData() {
        for (DictAiThreshold threshold : cache.values()) {
            if (AIThresholdEnum.getThreshold(threshold.getThresholdId()) == null) {

            }
            if (AITargetObjectCampEnum.getTargetComp(threshold.getTargetCampType()) == null) {

            }
            if (AIValueCompareEnum.getCompare(threshold.getCampareType()) == null) {

            }
        }
        return super.checkData();
    }

}
