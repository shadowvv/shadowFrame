package com.shadowFrame.physics.shape.line;

import com.shadowFrame.physics.shape.point.FPoint3;

/**
 * 3D float直线数据,使用点向式存储：(x-x0)/m=(y-y0)/n=(z-z0)/p
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/9/28 17:11
 */
public class FLine3 {

    private FPoint3 vector;
    private FPoint3 point;

    public FLine3(){
        vector = new FPoint3();
        point = new FPoint3();
    }

    public FLine3(FPoint3 vector,FPoint3 point){
        this.vector = vector;
        this.point = point;
    }

    public void setVector(FPoint3 vector) {
        this.vector = vector;
    }

    public void setPoint(FPoint3 point) {
        this.point = point;
    }

    public FPoint3 getVector() {
        return vector;
    }

    public FPoint3 getPoint() {
        return point;
    }
}
