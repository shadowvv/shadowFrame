package com.shadowFrame.physics.shape.plane;

import com.shadowFrame.physics.shape.point.FPoint2;

/**
 * 2D float三角形存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/14 15:32
 */
public class FTriangle2 {

    private FPoint2 a;
    private FPoint2 b;
    private FPoint2 c;

    public FTriangle2() {
        a = new FPoint2();
        b = new FPoint2();
        c = new FPoint2();
    }

    public FTriangle2(FPoint2 a, FPoint2 b, FPoint2 c) {
        this.a = a;
        this.b = b;
        this.c = c;
    }

    public void setA(FPoint2 a) {
        this.a = a;
    }

    public void setB(FPoint2 b) {
        this.b = b;
    }

    public void setC(FPoint2 c) {
        this.c = c;
    }

    public FPoint2 getA() {
        return a;
    }

    public FPoint2 getB() {
        return b;
    }

    public FPoint2 getC() {
        return c;
    }

}
