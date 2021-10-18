package com.shadowFrame.physics.shape.plane;

import com.shadowFrame.physics.shape.point.FPoint3;

/**
 * 3D float长方形存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/14 15:32
 */
public class FSquare3 {

    private FPoint3 leftTop;
    private FPoint3 rightBottom;

    public FSquare3(){
        leftTop = new FPoint3();
        rightBottom = new FPoint3();
    }

    public FSquare3(FPoint3 leftTop,FPoint3 rightBottom){
        this.leftTop = leftTop;
        this.rightBottom = rightBottom;
    }

    public void setLeftTop(FPoint3 leftTop) {
        this.leftTop = leftTop;
    }

    public void setRightBottom(FPoint3 rightBottom) {
        this.rightBottom = rightBottom;
    }

    public FPoint3 getLeftTop() {
        return leftTop;
    }

    public FPoint3 getRightBottom() {
        return rightBottom;
    }
}
