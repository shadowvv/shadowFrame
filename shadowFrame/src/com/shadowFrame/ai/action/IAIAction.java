package com.shadowFrame.ai.action;

import com.shadowFrame.ai.SceneObject;
import com.shadowFrame.ai.condition.event.AIEvent;
import com.shadowFrame.ai.tendency.AITendencyParam;

import java.util.Collection;

/**
 * ai动作接口
 *
 * @author shadow
 */
public interface IAIAction {

    /**
     * 执行动作
     *
     * @param self  执行动作的场景物体
     * @param param 动作参数
     * @return 执行动作成功
     */
    boolean doAction(SceneObject self, AIActionParam param);

    /**
     * 是否可以执行动作
     *
     * @param self  执行动作的场景物体
     * @param param 动作参数
     * @return
     */
    boolean checkAction(SceneObject self, AIActionParam param);

    /**
     * 停止动作
     */
    void stop(SceneObject self);

    /**
     * 重置动作参数
     *
     * @param param
     * @param self
     * @param currentTendency
     */
    void reset(AIActionParam param, SceneObject self, AITendencyParam currentTendency);

    /**
     * 是否结束动作
     *
     * @param self
     * @param param
     * @param collection
     * @return
     */
    boolean isOver(SceneObject self, AIActionParam param, Collection<AIEvent> collection);

}
