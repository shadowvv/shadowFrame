package com.shadowFrame.physics.shape.line;

import com.shadowFrame.physics.shape.point.FPoint3;

/**
 * 3D float线段存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/8 16:09
 */
public class FLineSegment3 {

    private FPoint3 left;
    private FPoint3 right;

    public FLineSegment3(){
        left = new FPoint3();
        right = new FPoint3();
    }

    public FLineSegment3(FPoint3 left, FPoint3 right){
        this.left = left;
        this.right = right;
    }

    public void setLeft(FPoint3 left) {
        this.left = left;
    }

    public void setRight(FPoint3 right) {
        this.right = right;
    }

    public FPoint3 getLeft() {
        return left;
    }

    public FPoint3 getRight() {
        return right;
    }
}
