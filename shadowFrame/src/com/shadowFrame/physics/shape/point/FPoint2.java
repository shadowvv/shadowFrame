package com.shadowFrame.physics.shape.point;

/**
 * 2D float点数据
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/9/28 16:37
 */
public class FPoint2 {

    private float x;
    private float y;

    public FPoint2() {
        this.x = 0.0f;
        this.y = 0.0f;
    }

    public FPoint2(float x, float y) {
        this.x = x;
        this.y = y;
    }

    public void setX(float x) {
        this.x = x;
    }

    public void setY(float y) {
        this.y = y;
    }

    public float getX() {
        return x;
    }

    public float getY() {
        return y;
    }
}
