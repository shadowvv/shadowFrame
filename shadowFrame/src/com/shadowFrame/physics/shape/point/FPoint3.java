package com.shadowFrame.physics.shape.point;

/**
 * 3D float点数据
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/9/28 16:37
 */
public class FPoint3 {

    private float x;
    private float y;
    private float z;

    public FPoint3() {
        this.x = 0.0f;
        this.y = 0.0f;
        this.z = 0.0f;
    }

    public FPoint3(float x, float y, float z) {
        this.x = x;
        this.y = y;
        this.z = z;
    }

    public void setX(float x) {
        this.x = x;
    }

    public void setY(float y) {
        this.y = y;
    }

    public void setZ(float z) {
        this.z = z;
    }

    public float getX() {
        return x;
    }

    public float getY() {
        return y;
    }

    public float getZ() {
        return z;
    }

}
