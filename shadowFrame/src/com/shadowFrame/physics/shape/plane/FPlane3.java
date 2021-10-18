package com.shadowFrame.physics.shape.plane;

/**
 * 3D float面存储,使用一般方程存储：ax+by+cz+d=0
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/9 11:34
 */
public class FPlane3 {

    private float a;
    private float b;
    private float c;
    private float d;

    public FPlane3(){
        a = 0.0f;
        b = 0.0f;
        c = 0.0f;
        d = 0.0f;
    }

    public FPlane3(float a, float b, float c, float d){
        this.a = a;
        this.b = b;
        this.c = c;
        this.d = d;
    }

    public void setA(float a) {
        this.a = a;
    }

    public void setB(float b) {
        this.b = b;
    }

    public void setC(float c) {
        this.c = c;
    }

    public void setD(float d) {
        this.d = d;
    }

    public float getA() {
        return a;
    }

    public float getB() {
        return b;
    }

    public float getC() {
        return c;
    }

    public float getD() {
        return d;
    }

}
