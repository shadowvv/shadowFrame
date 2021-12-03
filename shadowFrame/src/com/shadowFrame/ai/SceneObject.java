package com.shadowFrame.ai;

import com.shadowFrame.physics.shape.point.FPoint3;

import java.util.ArrayList;
import java.util.List;


/**
 * 场景单位
 *
 * @author shadow
 */
public class SceneObject {

    private ComponentAI ai = new ComponentAI(this, true);

    public ComponentAI getComponentAI() {
        return ai;
    }

    public long getId() {
        return 0;
    }

    public Object getCamp() {
        return null;
    }

    public int getVigilanceRange() {
        return 0;
    }

    public FPoint3 getPos() {
        return null;
    }

    public FPoint3 getDir() {
        return null;
    }

    public boolean isHaveShield() {
        return false;
    }

    public double getMaxHP() {
        return 0;
    }

    public float getHp() {
        return 0;
    }

    public int getDictId() {
        return 0;
    }

    public List<SceneObject> getViewSceneObjects() {
        return new ArrayList<SceneObject>();
    }

    public void changeHp(float f) {

    }

}
