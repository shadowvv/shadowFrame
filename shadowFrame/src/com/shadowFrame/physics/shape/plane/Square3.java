package com.shadowFrame.physics.shape.plane;


import com.shadowFrame.physics.shape.point.Point3;

/**
 * 3D int长方形存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/14 15:32
 */
public class Square3 {

    private Point3 leftTop;
    private Point3 rightBottom;

    public Square3(){
        leftTop = new Point3();
        rightBottom = new Point3();
    }

    public Square3(Point3 leftTop,Point3 rightBottom){
        this.leftTop = leftTop;
        this.rightBottom = rightBottom;
    }

    public void setLeftTop(Point3 leftTop) {
        this.leftTop = leftTop;
    }

    public void setRightBottom(Point3 rightBottom) {
        this.rightBottom = rightBottom;
    }

    public Point3 getLeftTop() {
        return leftTop;
    }

    public Point3 getRightBottom() {
        return rightBottom;
    }

}
