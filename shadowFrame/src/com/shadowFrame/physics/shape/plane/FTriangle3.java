package com.shadowFrame.physics.shape.plane;

import com.shadowFrame.physics.shape.point.FPoint3;

/**
 * 3D float三角形存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/18 16:19
 */
public class FTriangle3 {

    private FPoint3 a;
    private FPoint3 b;
    private FPoint3 c;

    public FTriangle3() {
        a = new FPoint3();
        b = new FPoint3();
        c = new FPoint3();
    }

    public FTriangle3(FPoint3 a, FPoint3 b, FPoint3 c) {
        this.a = a;
        this.b = b;
        this.c = c;
    }

    public void setA(FPoint3 a) {
        this.a = a;
    }

    public void setB(FPoint3 b) {
        this.b = b;
    }

    public void setC(FPoint3 c) {
        this.c = c;
    }

    public FPoint3 getA() {
        return a;
    }

    public FPoint3 getB() {
        return b;
    }

    public FPoint3 getC() {
        return c;
    }

}
