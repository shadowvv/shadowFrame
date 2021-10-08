package com.shadowFrame.physics.shape.line;

import com.shadowFrame.physics.shape.point.FPoint2;

/**
 * 2D float线段存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/8 16:09
 */
public class FLineSegment2 {

    private FPoint2 left;
    private FPoint2 right;

    public FLineSegment2(){
        left = new FPoint2();
        right = new FPoint2();
    }

    public FLineSegment2(FPoint2 left,FPoint2 right){
        this.left = left;
        this.right = right;
    }

    public void setLeft(FPoint2 left) {
        this.left = left;
    }

    public void setRight(FPoint2 right) {
        this.right = right;
    }

    public FPoint2 getLeft() {
        return left;
    }

    public FPoint2 getRight() {
        return right;
    }
}
