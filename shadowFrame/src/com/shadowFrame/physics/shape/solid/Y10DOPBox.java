package com.shadowFrame.physics.shape.solid;

import com.shadowFrame.physics.shape.line.LineSegment3;

/**
 * 以Y轴对齐的10DOP包围盒，int数据存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/18 16:20
 */
public class Y10DOPBox {

    private LineSegment3 xSegment;
    private LineSegment3 ySegment;
    private LineSegment3 zSegment;

    private LineSegment3 xz13Segment;
    private LineSegment3 xz24Segment;

    public Y10DOPBox() {
        xSegment = new LineSegment3();
        ySegment = new LineSegment3();
        zSegment = new LineSegment3();

        xz13Segment = new LineSegment3();
        xz24Segment = new LineSegment3();
    }

    public Y10DOPBox(LineSegment3 xSegment, LineSegment3 ySegment, LineSegment3 zSegment, LineSegment3 xz13Segment, LineSegment3 xz24Segment) {
        this.xSegment = xSegment;
        this.ySegment = ySegment;
        this.zSegment = zSegment;
        this.xz13Segment = xz13Segment;
        this.xz24Segment = xz24Segment;
    }

    public void setXSegment(LineSegment3 xSegment) {
        this.xSegment = xSegment;
    }

    public void setYSegment(LineSegment3 ySegment) {
        this.ySegment = ySegment;
    }

    public void setZSegment(LineSegment3 zSegment) {
        this.zSegment = zSegment;
    }

    public void setXz13Segment(LineSegment3 xz13Segment) {
        this.xz13Segment = xz13Segment;
    }

    public void setXz24Segment(LineSegment3 xz24Segment) {
        this.xz24Segment = xz24Segment;
    }

    public LineSegment3 getXSegment() {
        return xSegment;
    }

    public LineSegment3 getYSegment() {
        return ySegment;
    }

    public LineSegment3 getZSegment() {
        return zSegment;
    }

    public LineSegment3 getXz13Segment() {
        return xz13Segment;
    }

    public LineSegment3 getXz24Segment() {
        return xz24Segment;
    }

}
