package com.shadowFrame.physics.shape.line;

/**
 * 2D float直线数据,使用y=kx+b的方式存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/9/28 17:11
 */
public class FLine2 {

    private float k;
    private float b;

    public FLine2(){
        this.k = 0.0f;
        this.b = 0.0f;
    }

    public FLine2(float k,float b){
        this.k = k;
        this.b = b;
    }

    public void setK(float k) {
        this.k = k;
    }

    public void setB(float b) {
        this.b = b;
    }

    public float getK() {
        return k;
    }

    public float getB() {
        return b;
    }
}
