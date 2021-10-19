package com.shadowFrame.physics.shape.solid;

import com.shadowFrame.physics.shape.line.LineSegment3;

/**
 * 以X轴对齐的10DOP包围盒，int数据存储
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/18 16:20
 */
public class X10DOPBox {

    private LineSegment3 xSegment;
    private LineSegment3 ySegment;
    private LineSegment3 zSegment;

    private LineSegment3 yz13Segment;
    private LineSegment3 yz24Segment;

    public X10DOPBox(){
        xSegment = new LineSegment3();
        ySegment = new LineSegment3();
        zSegment = new LineSegment3();

        yz13Segment = new LineSegment3();
        yz24Segment = new LineSegment3();
    }

    public X10DOPBox(LineSegment3 xSegment,LineSegment3 ySegment,LineSegment3 zSegment,LineSegment3 yz13Segment,LineSegment3 yz24Segment){
        this.xSegment = xSegment;
        this.ySegment = ySegment;
        this.zSegment = zSegment;
        this.yz13Segment = yz13Segment;
        this.yz24Segment = yz24Segment;
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

    public void setYz13Segment(LineSegment3 yz13Segment) {
        this.yz13Segment = yz13Segment;
    }

    public void setYz24Segment(LineSegment3 yz24Segment) {
        this.yz24Segment = yz24Segment;
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

    public LineSegment3 getYz13Segment() {
        return yz13Segment;
    }

    public LineSegment3 getYz24Segment() {
        return yz24Segment;
    }
}
