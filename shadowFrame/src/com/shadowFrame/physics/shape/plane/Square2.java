package com.shadowFrame.physics.shape.plane;

import com.shadowFrame.physics.shape.point.Point2;

import java.awt.*;

/**
 * 2D int长方形存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/8 16:09
 */
public class Square2 {

    private Point2 leftTop;
    private Point2 rightBottom;

    public Square2(){
        leftTop = new Point2();
        rightBottom = new Point2();
    }

    public Square2(Point2 leftTop,Point2 rightBottom){
        this.leftTop = leftTop;
        this.rightBottom = rightBottom;
    }

    public void setLeftTop(Point2 leftTop) {
        this.leftTop = leftTop;
    }

    public void setRightBottom(Point2 rightBottom) {
        this.rightBottom = rightBottom;
    }

    public Point2 getLeftTop() {
        return leftTop;
    }

    public Point2 getRightBottom() {
        return rightBottom;
    }
}
