package com.shadowFrame.ai.tendency;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.action.AIActionParam;


/**
 * ai行为枚举
 *
 * @author shadow
 */
public enum AITendencyEnum {

    /**
     * 警戒行为
     */
    Vigilance(1, "Vigilance", new AIVigilanceTendency()),
    /**
     * 战斗行为
     */
    Battle(2, "Battle", new AIBattleTendency()),
    /**
     * 逃跑行为
     */
    Escape(3, "Escape", new AIEscapeTendency()),
    ;

    private static AITendencyEnum[] enums = AITendencyEnum.values();

    /**
     * 获得门槛
     *
     * @param id 门槛Id
     * @return
     */
    public static AITendencyEnum getTendency(int id) {
        for (AITendencyEnum aiEnum : enums) {
            if (aiEnum.id == id) {
                return aiEnum;
            }
        }
        return null;
    }

    private int id;
    private String name;
    private IAITendency tendency;

    private AITendencyEnum(int id, String name, IAITendency tendency) {
        this.id = id;
        this.name = name;
        this.tendency = tendency;
    }

    /**
     * @return 行为id
     */
    public int getId() {
        return id;
    }

    /**
     * @return 行为名
     */
    public String getName() {
        return name;
    }

    /**
     * 获得行为的下一个动作
     *
     * @param self          ai绑定的单位
     * @param param         行为参数
     * @param currentAction 当前动作
     * @param collection
     * @return 下一个动作
     */
    public AIActionParam getNextAction(SceneObject self, AITendencyParam param, AIActionParam currentAction) {
        return tendency.getNextAction(self, param, currentAction);
    }

}
