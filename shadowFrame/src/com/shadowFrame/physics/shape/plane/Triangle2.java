package com.shadowFrame.physics.shape.plane;

import com.shadowFrame.physics.shape.point.Point2;

/**
 * 2D int三角形存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/14 15:32
 */
public class Triangle2 {

    private Point2 a;
    private Point2 b;
    private Point2 c;

    public Triangle2(){
        a = new Point2();
        b = new Point2();
        c = new Point2();
    }

    public Triangle2(Point2 a,Point2 b,Point2 c){
        this.a = a;
        this.b = b;
        this.c = c;
    }

    public void setA(Point2 a) {
        this.a = a;
    }

    public void setB(Point2 b) {
        this.b = b;
    }

    public void setC(Point2 c) {
        this.c = c;
    }

    public Point2 getA() {
        return a;
    }

    public Point2 getB() {
        return b;
    }

    public Point2 getC() {
        return c;
    }
}
