package com.shadowFrame.physics.shape.solid;

/**
 * 以Z轴对齐的10DOP包围盒，float数据存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/18 16:20
 */
public class FZ10DOPBox {

    private FLineSegment3 xSegment;
    private FLineSegment3 ySegment;
    private FLineSegment3 zSegment;

    private FLineSegment3 xy13Segment;
    private FLineSegment3 xy24Segment;

    public FZ10DOPBox() {
        xSegment = new FLineSegment3();
        ySegment = new FLineSegment3();
        zSegment = new FLineSegment3();

        xy13Segment = new FLineSegment3();
        xy24Segment = new FLineSegment3();
    }

    public FZ10DOPBox(FLineSegment3 xSegment, FLineSegment3 ySegment, FLineSegment3 zSegment, FLineSegment3 xy13Segment, FLineSegment3 xy24Segment) {
        this.xSegment = xSegment;
        this.ySegment = ySegment;
        this.zSegment = zSegment;
        this.xy13Segment = xy13Segment;
        this.xy24Segment = xy24Segment;
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

    public void setXy13Segment(FLineSegment3 xy13Segment) {
        this.xy13Segment = xy13Segment;
    }

    public void setXy24Segment(FLineSegment3 xy24Segment) {
        this.xy24Segment = xy24Segment;
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

    public FLineSegment3 getXy13Segment() {
        return xy13Segment;
    }

    public FLineSegment3 getXy24Segment() {
        return xy24Segment;
    }

}
