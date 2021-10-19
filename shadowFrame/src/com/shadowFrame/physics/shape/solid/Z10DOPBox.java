package com.shadowFrame.physics.shape.solid;

import com.shadowFrame.physics.shape.line.LineSegment3;

/**
 * 以Z轴对齐的10DOP包围盒，int数据存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/18 16:20
 */
public class Z10DOPBox {

    private LineSegment3 xSegment;
    private LineSegment3 ySegment;
    private LineSegment3 zSegment;

    private LineSegment3 xy13Segment;
    private LineSegment3 xy24Segment;

    public Z10DOPBox(){
        xSegment = new LineSegment3();
        ySegment = new LineSegment3();
        zSegment = new LineSegment3();

        xy13Segment = new LineSegment3();
        xy24Segment = new LineSegment3();
    }

    public Z10DOPBox(LineSegment3 xSegment, LineSegment3 ySegment, LineSegment3 zSegment, LineSegment3 xy13Segment, LineSegment3 xy24Segment){
        this.xSegment = xSegment;
        this.ySegment = ySegment;
        this.zSegment = zSegment;
        this.xy13Segment = xy13Segment;
        this.xy24Segment = xy24Segment;
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

    public void setXy13Segment(LineSegment3 xy13Segment) {
        this.xy13Segment = xy13Segment;
    }

    public void setXy24Segment(LineSegment3 xy24Segment) {
        this.xy24Segment = xy24Segment;
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

    public LineSegment3 getXy13Segment() {
        return xy13Segment;
    }

    public LineSegment3 getXy24Segment() {
        return xy24Segment;
    }

}
