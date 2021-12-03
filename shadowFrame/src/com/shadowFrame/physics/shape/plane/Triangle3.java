package com.shadowFrame.physics.shape.plane;

import com.shadowFrame.physics.shape.point.Point3;

/**
 * 3D int三角形存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/18 16:20
 */
public class Triangle3 {

    private Point3 a;
    private Point3 b;
    private Point3 c;

    public Triangle3() {
        a = new Point3();
        b = new Point3();
        c = new Point3();
    }

    public Triangle3(Point3 a, Point3 b, Point3 c) {
        this.a = a;
        this.b = b;
        this.c = c;
    }

    public void setA(Point3 a) {
        this.a = a;
    }

    public void setB(Point3 b) {
        this.b = b;
    }

    public void setC(Point3 c) {
        this.c = c;
    }

    public Point3 getA() {
        return a;
    }

    public Point3 getB() {
        return b;
    }

    public Point3 getC() {
        return c;
    }

}
