package com.shadowFrame.physics.shape.line;

/**
 * 2D int直线数据，使用y=kx+b存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/9/28 17:10
 */
public class Line2 {

    private int k;
    private int b;

    public Line2(){
        k = 0;
        b = 0;
    }

    public Line2(int k,int b){
        this.k = k;
        this.b = b;
    }

    public void setK(int k) {
        this.k = k;
    }

    public void setB(int b) {
        this.b = b;
    }

    public int getK() {
        return k;
    }

    public int getB() {
        return b;
    }
}
