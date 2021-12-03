package com.shadowFrame.physics.shape.solid;

import com.shadowFrame.physics.shape.point.FPoint3;
import com.shadowFrame.physics.shape.point.Point3;

/**
 * AABB包围盒 int数据存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/18 16:20
 */
public class AABBBox {

    private Point3 base;
    private Point3 x_point;
    private Point3 y_point;
    private Point3 z_point;

    public AABBBox() {
        base = new Point3();
        x_point = new Point3();
        y_point = new Point3();
        z_point = new Point3();
    }

    public AABBBox(Point3 base, Point3 x_point, Point3 y_point, Point3 z_point) {
        this.base = base;
        this.x_point = x_point;
        this.y_point = y_point;
        this.z_point = z_point;
    }

    public void setBase(Point3 base) {
        this.base = base;
    }

    public void setX_point(Point3 x_point) {
        this.x_point = x_point;
    }

    public void setY_point(Point3 y_point) {
        this.y_point = y_point;
    }

    public void setZ_point(Point3 z_point) {
        this.z_point = z_point;
    }

    public Point3 getBase() {
        return base;
    }

    public Point3 getX_point() {
        return x_point;
    }

    public Point3 getY_point() {
        return y_point;
    }

    public Point3 getZ_point() {
        return z_point;
    }

    public FPoint3 getFSphereBoxCenter() {
        float x = (base.getX() + x_point.getX()) / 2.0f;
        float y = (base.getY() + y_point.getY()) / 2.0f;
        float z = (base.getZ() + z_point.getZ()) / 2.0f;
        FPoint3 center = new FPoint3(x, y, z);
        return center;
    }
}
