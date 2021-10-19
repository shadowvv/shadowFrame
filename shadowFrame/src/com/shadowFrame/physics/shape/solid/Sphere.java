package com.shadowFrame.physics.shape.solid;

import com.shadowFrame.physics.shape.point.Point3;

/**
 * 球 int数据存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/18 16:20
 */
public class Sphere {

    private Point3 center;
    private int radius;

    public Sphere(){
        center = new Point3();
        radius = 0;
    }

    public Sphere(Point3 center,int radius){
        this.center = center;
        this.radius = radius;
    }

    public void setCenter(Point3 center) {
        this.center = center;
    }

    public void setRadius(int radius) {
        this.radius = radius;
    }

    public Point3 getCenter() {
        return center;
    }

    public int getRadius() {
        return radius;
    }
}
