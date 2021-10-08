package com.shadowFrame.physics.shape.line;

import com.shadowFrame.physics.shape.point.Point3;

/**
 * 3D int线段存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/8 16:09
 */
public class LineSegment3 {

    private Point3 left;
    private Point3 right;

    public LineSegment3(){
        left = new Point3();
        right = new Point3();
    }

    public LineSegment3(Point3 left, Point3 right){
        this.left = left;
        this.right = right;
    }

    public void setLeft(Point3 left) {
        this.left = left;
    }

    public void setRight(Point3 right) {
        this.right = right;
    }

    public Point3 getLeft() {
        return left;
    }

    public Point3 getRight() {
        return right;
    }
}
