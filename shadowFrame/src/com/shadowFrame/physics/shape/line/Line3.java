package com.shadowFrame.physics.shape.line;

import com.shadowFrame.geometry.analytic.Vector3;
import com.shadowFrame.physics.shape.IllegalGeometryOperationException;
import com.shadowFrame.physics.shape.point.FPoint3;
import com.shadowFrame.physics.shape.point.Point3;

/**
 * 3D直线存储，使用点向式存储：(x-x0)/m=(y-y0)/n=(z-z0)/p
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/9/28 17:11
 */
public class Line3 implements ILine3Operation {

    private Vector3 vector;
    private Point3 point;

    public Line3() {
        vector = new Vector3();
        point = new Point3();
    }

    public Line3(Vector3 vector, Point3 point) {
        this.vector = vector;
        this.point = point;
    }

    public void setVector(Vector3 vector) {
        this.vector = vector;
    }

    public void setPoint(Point3 point) {
        this.point = point;
    }

    public Vector3 getVector() {
        return vector;
    }

    public Point3 getPoint() {
        return point;
    }

    @Override
    public float getZ(float x, float y) throws IllegalGeometryOperationException {
        return 0;
    }

    @Override
    public float getY(float x, float z) throws IllegalGeometryOperationException {
        return 0;
    }

    @Override
    public float getX(float y, float z) throws IllegalGeometryOperationException {
        return 0;
    }

    @Override
    public boolean isPointOnLine(FPoint3 point) throws IllegalGeometryOperationException {
        return false;
    }

    @Override
    public float point2LineDistance(FPoint3 point) {
        return 0;
    }

    @Override
    public boolean isParallelLine(ILine3Operation line) {
        return false;
    }

    @Override
    public Vector3 getDirectionVector() {
        return null;
    }

    @Override
    public Vector3 getNormalVector() {
        return null;
    }
}
