package com.shadowFrame.ai;


/**
 * 怪物阶段
 *
 * @author shadow
 */
public enum PhaseEnum {

    /**
     * 一阶段
     */
    OnePhase(1),
    /**
     * 二阶段
     */
    SecondPhase(2),
    /**
     * 三阶段
     */
    ThirdPhase(3),
    /**
     * 碎盾
     */
    breakShieldPhase(4),
    ;

    private static PhaseEnum[] enums = PhaseEnum.values();

    public static PhaseEnum getPhase(int id) {
        for (PhaseEnum aiEnum : enums) {
            if (aiEnum.id == id) {
                return aiEnum;
            }
        }
        return null;
    }

    private int id;

    private PhaseEnum(int id) {
        this.id = id;
    }

    /**
     * @return 阶段Id
     */
    public int getId() {
        return id;
    }
}
