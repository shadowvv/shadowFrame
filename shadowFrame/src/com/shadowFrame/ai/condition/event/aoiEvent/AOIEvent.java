package com.shadowFrame.ai.condition.event.aoiEvent;

import com.shadowFrame.ai.SceneObject;

import java.util.ArrayList;
import java.util.List;

/**
 * AOI事件
 *
 * @author shadow
 */
public class AOIEvent {

    private AOIEventEnum type;
    private String param;
    private SceneObject source;
    private List<SceneObject> observers;
    private SceneObject target;

    /**
     * @param type   事件类型
     * @param param  事件参数
     * @param source 事件发起人
     */
    public AOIEvent(AOIEventEnum type, SceneObject source) {
        this.type = type;
        this.source = source;
        observers = new ArrayList<SceneObject>();
    }

    /**
     * @return 事件类型
     */
    public AOIEventEnum getEventType() {
        return type;
    }

    /**
     * 设置参数
     *
     * @param param
     */
    public void setParam(String param) {
        this.param = param;
    }

    /**
     * @return 事件参数
     */
    public String getParam() {
        return param;
    }

    /**
     * @return 是否发起人
     */
    public SceneObject getSource() {
        return source;
    }

    /**
     * 添加观察者
     *
     * @param observer 事件观察者
     */
    public void addObserver(SceneObject observer) {
        observers.add(observer);
    }

    /**
     * 添加目标
     *
     * @param target 事件目标
     */
    public void addTarget(SceneObject target) {
        this.target = target;
    }

    /**
     * @return 事件观察者
     */
    public List<SceneObject> getObservers() {
        return observers;
    }

    /**
     * @return 事件目标
     */
    public SceneObject getTarget() {
        return target;
    }

    /**
     * @return 转换为ai事件
     */
    public void dispatchAIEvent() {
        type.dispatchAIEvent(this);
    }

}
