package com.shadowFrame.physics.shape.point;

/**
 * 2D int点数据
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/9/28 16:37
 */
public class Point2 {

    private int x;
    private int y;

    public Point2(){
        this.x = 0;
        this.y = 0;
    }

    public Point2(int x,int y){
        this.x = x;
        this.y = y;
    }

    public void setX(int x) {
        this.x = x;
    }

    public void setY(int y) {
        this.y = y;
    }

    public int getX() {
        return x;
    }

    public int getY() {
        return y;
    }
}
