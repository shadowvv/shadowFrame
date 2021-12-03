package com.shadowFrame.physics.shape.solid;

import com.shadowFrame.physics.shape.point.FPoint3;

/**
 * AABB包围盒 float数据存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/18 16:20
 */
public class FAABBBox {

    private FPoint3 base;
    private FPoint3 x_point;
    private FPoint3 y_point;
    private FPoint3 z_point;

    public FAABBBox() {
        base = new FPoint3();
        x_point = new FPoint3();
        y_point = new FPoint3();
        z_point = new FPoint3();
    }

    public FAABBBox(FPoint3 base, FPoint3 x_point, FPoint3 y_point, FPoint3 z_point) {
        this.base = base;
        this.x_point = x_point;
        this.y_point = y_point;
        this.z_point = z_point;
    }

    public void setBase(FPoint3 base) {
        this.base = base;
    }

    public void setX_point(FPoint3 x_point) {
        this.x_point = x_point;
    }

    public void setY_point(FPoint3 y_point) {
        this.y_point = y_point;
    }

    public void setZ_point(FPoint3 z_point) {
        this.z_point = z_point;
    }

    public FPoint3 getBase() {
        return base;
    }

    public FPoint3 getX_point() {
        return x_point;
    }

    public FPoint3 getY_point() {
        return y_point;
    }

    public FPoint3 getZ_point() {
        return z_point;
    }

}
