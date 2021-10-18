package com.shadowFrame.physics.shape.plane;

/**
 * 3D int面存储,使用一般方程存储：ax+by+cz+d=0
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/8 16:09
 */
public class Plane3 {

    private int a;
    private int b;
    private int c;
    private int d;

    public Plane3(){
        a = 0;
        b = 0;
        c = 0;
        d = 0;
    }

    public Plane3(int a, int b, int c, int d){
        this.a = a;
        this.b = b;
        this.c = c;
        this.d = d;
    }

    public void setA(int a) {
        this.a = a;
    }

    public void setB(int b) {
        this.b = b;
    }

    public void setC(int c) {
        this.c = c;
    }

    public void setD(int d) {
        this.d = d;
    }

    public int getA() {
        return a;
    }

    public int getB() {
        return b;
    }

    public int getC() {
        return c;
    }

    public int getD() {
        return d;
    }
}
