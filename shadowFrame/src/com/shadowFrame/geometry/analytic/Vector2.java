package com.shadowFrame.geometry.analytic;

/**
 * 2D向量
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/11/10 16:27
 */
public class Vector2 {

    private float x;
    private float y;

    public Vector2() {
        this.x = 0.0f;
        this.y = 0.0f;
    }

    public Vector2(float x, float y) {
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
