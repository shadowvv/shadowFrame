package com.shadowFrame.physics.shape.solid;

import com.shadowFrame.physics.shape.line.FLineSegment3;

/**
 * 以Y轴对齐的10DOP包围盒，float数据存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/18 16:20
 */
public class FY10DOPBox {

    private FLineSegment3 xSegment;
    private FLineSegment3 ySegment;
    private FLineSegment3 zSegment;

    private FLineSegment3 xz13Segment;
    private FLineSegment3 xz24Segment;

    public FY10DOPBox(){
        xSegment = new FLineSegment3();
        ySegment = new FLineSegment3();
        zSegment = new FLineSegment3();

        xz13Segment = new FLineSegment3();
        xz24Segment = new FLineSegment3();
    }

    public FY10DOPBox(FLineSegment3 xSegment, FLineSegment3 ySegment, FLineSegment3 zSegment, FLineSegment3 xz13Segment, FLineSegment3 xz24Segment){
        this.xSegment = xSegment;
        this.ySegment = ySegment;
        this.zSegment = zSegment;
        this.xz13Segment = xz13Segment;
        this.xz24Segment = xz24Segment;
    }

    public void setXSegment(FLineSegment3 xSegment) {
        this.xSegment = xSegment;
    }

    public void setYSegment(FLineSegment3 ySegment) {
        this.ySegment = ySegment;
    }

    public void setZSegment(FLineSegment3 zSegment) {
        this.zSegment = zSegment;
    }

    public void setXz13Segment(FLineSegment3 xz13Segment) {
        this.xz13Segment = xz13Segment;
    }

    public void setXz24Segment(FLineSegment3 xz24Segment) {
        this.xz24Segment = xz24Segment;
    }

    public FLineSegment3 getXSegment() {
        return xSegment;
    }

    public FLineSegment3 getYSegment() {
        return ySegment;
    }

    public FLineSegment3 getZSegment() {
        return zSegment;
    }

    public FLineSegment3 getXz13Segment() {
        return xz13Segment;
    }

    public FLineSegment3 getXz24Segment() {
        return xz24Segment;
    }

}
