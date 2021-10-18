package com.shadowFrame.physics.shape.plane;

import com.shadowFrame.physics.shape.point.FPoint2;

/**
 * 2D float长方形存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/8 16:09
 */
public class FSquare2 {

    private FPoint2 leftTop;
    private FPoint2 rightBottom;

    public FSquare2(){
        leftTop = new FPoint2();
        rightBottom = new FPoint2();
    }

    public FSquare2(FPoint2 leftTop,FPoint2 rightBottom){
        this.leftTop = leftTop;
        this.rightBottom = rightBottom;
    }

    public void setLeftTop(FPoint2 leftTop) {
        this.leftTop = leftTop;
    }

    public void setRightBottom(FPoint2 rightBottom) {
        this.rightBottom = rightBottom;
    }

    public FPoint2 getLeftTop() {
        return leftTop;
    }

    public FPoint2 getRightBottom() {
        return rightBottom;
    }
}
