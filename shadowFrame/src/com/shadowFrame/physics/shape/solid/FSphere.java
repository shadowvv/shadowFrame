package com.shadowFrame.physics.shape.solid;

import com.shadowFrame.physics.shape.point.FPoint3;

/**
 * 球 float数据存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/18 16:20
 */
public class FSphere {

    private FPoint3 center;
    private float radius;

    public FSphere() {
        center = new FPoint3();
        radius = 0.0f;
    }

    public FSphere(FPoint3 center, int radius) {
        this.center = center;
        this.radius = radius;
    }

    public void setCenter(FPoint3 center) {
        this.center = center;
    }

    public void setRadius(int radius) {
        this.radius = radius;
    }

    public FPoint3 getCenter() {
        return center;
    }

    public float getRadius() {
        return radius;
    }
}
