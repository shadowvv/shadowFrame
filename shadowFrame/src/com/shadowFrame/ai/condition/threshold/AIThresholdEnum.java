package com.shadowFrame.ai.condition.threshold;

import com.shadowFrame.ai.SceneObject;


/**
 * ai值门槛类型
 *
 * @author shadow
 */
public enum AIThresholdEnum {
    /**
     * 无门槛
     */
    Empty(0, "empty", new IAIThreshold() {
        @Override
        public double getThresholdValue(SceneObject self, SceneObject target) {
            return 0;
        }
    }),
    /**
     * 血量高于百分比
     */
    HPPercent(1, "HPPercent", new IAIThreshold() {

        @Override
        public double getThresholdValue(SceneObject self, SceneObject target) {
            return target.getHp() / target.getMaxHP();
        }
    }),
    /**
     * 仇恨列表
     */
    HatredList(2, "HatredList", new IAIThreshold() {
        @Override
        public double getThresholdValue(SceneObject self, SceneObject target) {
            return target.getComponentAI().getHatredListSize();
        }
    }),
    /**
     * 距离
     */
    Range(3, "Range", new IAIThreshold() {
        @Override
        public double getThresholdValue(SceneObject self, SceneObject target) {
            return 0;
        }
    }),
    /**
     * 策略持续时间
     */
    StartegyDuation(4, "StartegyDuation", new IAIThreshold() {
        @Override
        public double getThresholdValue(SceneObject self, SceneObject target) {
            return System.currentTimeMillis() - target.getComponentAI().getCurrentStrategy().getBeginTime();
        }
    }),
    /**
     * 行为持续时间
     */
    TendencyDuation(5, "TendencyDuation", new IAIThreshold() {
        @Override
        public double getThresholdValue(SceneObject self, SceneObject target) {
            return System.currentTimeMillis() - target.getComponentAI().getCurrentTendency().getBeginTime();
        }
    }),
    /**
     * 动作持续时间
     */
    ActionDuation(6, "ActionDuation", new IAIThreshold() {
        @Override
        public double getThresholdValue(SceneObject self, SceneObject target) {
            return System.currentTimeMillis() - target.getComponentAI().getCurrentAction().getBeginTime();
        }
    }),
    /**
     * 前方距离
     */
    FrontRange(7, "FrontRange", new IAIThreshold() {
        @Override
        public double getThresholdValue(SceneObject self, SceneObject target) {
            return 0;
        }
    }),
    /**
     * 背后距离
     */
    BackRange(8, "BackRange", new IAIThreshold() {
        @Override
        public double getThresholdValue(SceneObject self, SceneObject target) {
            return 0;
        }
    }),
    ;

    /**
     * 门槛接口
     *
     * @author shadow
     */
    interface IAIThreshold {

        /**
         * 获得门槛值
         *
         * @param self   发起检测的物体
         * @param target 检测的物体
         * @return 门槛值
         */
        double getThresholdValue(SceneObject self, SceneObject target);

    }

    private static AIThresholdEnum[] enums = AIThresholdEnum.values();

    /**
     * 获得门槛
     *
     * @param id 门槛Id
     * @return
     */
    public static AIThresholdEnum getThreshold(int id) {
        for (AIThresholdEnum aiEnum : enums) {
            if (aiEnum.id == id) {
                return aiEnum;
            }
        }
        return null;
    }

    private int id;
    private String name;
    private IAIThreshold threshold;

    private AIThresholdEnum(int id, String name, IAIThreshold threshold) {
        this.id = id;
        this.name = name;
        this.threshold = threshold;
    }

    /**
     * @return 门槛id
     */
    public int getId() {
        return id;
    }

    /**
     * @return 门槛名
     */
    public String getName() {
        return name;
    }

    /**
     * 是否过门槛
     *
     * @param self    发起检测的物体
     * @param target  检测的物体
     * @param value   门槛值
     * @param compare 比较方式
     * @return
     */
    public boolean overThreshold(SceneObject self, SceneObject target, double value, AIValueCompareEnum compare) {
        if (id == Empty.getId()) {
            return true;
        }
        double testValue = threshold.getThresholdValue(self, target);
        if (testValue == -1) {
            return false;
        }
        return compare.compare(testValue, value);
    }

}
