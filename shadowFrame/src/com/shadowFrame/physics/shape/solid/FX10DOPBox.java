package com.shadowFrame.physics.shape.solid;

import com.shadowFrame.physics.shape.line.FLineSegment3;

/**
 * 以X轴对齐的10DOP包围盒，float数据存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/18 16:20
 */
public class FX10DOPBox {

    private FLineSegment3 xSegment;
    private FLineSegment3 ySegment;
    private FLineSegment3 zSegment;

    private FLineSegment3 yz13Segment;
    private FLineSegment3 yz24Segment;

    public FX10DOPBox(){
        xSegment = new FLineSegment3();
        ySegment = new FLineSegment3();
        zSegment = new FLineSegment3();

        yz13Segment = new FLineSegment3();
        yz24Segment = new FLineSegment3();
    }

    public FX10DOPBox(FLineSegment3 xSegment,FLineSegment3 ySegment,FLineSegment3 zSegment,FLineSegment3 yz13Segment,FLineSegment3 yz24Segment){
        this.xSegment = xSegment;
        this.ySegment = ySegment;
        this.zSegment = zSegment;
        this.yz13Segment = yz13Segment;
        this.yz24Segment = yz24Segment;
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

    public void setYz13Segment(FLineSegment3 yz13Segment) {
        this.yz13Segment = yz13Segment;
    }

    public void setYz24Segment(FLineSegment3 yz24Segment) {
        this.yz24Segment = yz24Segment;
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

    public FLineSegment3 getYz13Segment() {
        return yz13Segment;
    }

    public FLineSegment3 getYz24Segment() {
        return yz24Segment;
    }
}
