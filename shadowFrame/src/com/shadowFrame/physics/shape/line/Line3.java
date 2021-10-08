package com.shadowFrame.physics.shape.line;

import com.shadowFrame.physics.shape.point.Point3;

/**
 * 3D int直线存储，使用点向式存储：(x-x0)/m=(y-y0)/n=(z-z0)/p
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/9/28 17:11
 */
public class Line3 {

    private Point3 vector;
    private Point3 point;

    public Line3(){
        vector = new Point3();
        point = new Point3();
    }

    public Line3(Point3 vector,Point3 point){
        this.vector = vector;
        this.point = point;
    }

    public void setVector(Point3 vector) {
        this.vector = vector;
    }

    public void setPoint(Point3 point) {
        this.point = point;
    }

    public Point3 getVector() {
        return vector;
    }

    public Point3 getPoint() {
        return point;
    }
}
