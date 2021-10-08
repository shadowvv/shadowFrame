package com.shadowFrame.physics.shape.line;

import com.shadowFrame.physics.shape.point.Point2;

/**
 * 2D int线段存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/9/28 17:11
 */
public class LineSegment2 {

    private Point2 left;
    private Point2 right;

    public LineSegment2(){
        left = new Point2();
        right = new Point2();
    }

    public LineSegment2(Point2 left,Point2 right){
        this.left = left;
        this.right = right;
    }

    public void setLeft(Point2 left) {
        this.left = left;
    }

    public void setRight(Point2 right) {
        this.right = right;
    }

    public Point2 getLeft() {
        return left;
    }

    public Point2 getRight() {
        return right;
    }
}
