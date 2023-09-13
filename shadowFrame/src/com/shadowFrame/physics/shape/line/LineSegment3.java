package com.shadowFrame.physics.shape.line;

import com.shadowFrame.geometry.analytic.Vector3;
import com.shadowFrame.physics.shape.IllegalGeometryOperationException;
import com.shadowFrame.physics.shape.point.FPoint3;
import com.shadowFrame.physics.shape.point.Point3;

/**
 * 3D线段表示
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/8 16:09
 */
public class LineSegment3 implements ILine3Operation {

    private Point3 left;
    private Point3 right;

    public LineSegment3() {
        left = new Point3();
        right = new Point3();
    }

    public LineSegment3(Point3 left, Point3 right) {
        this.left = left;
        this.right = right;
    }

    public void setLeft(Point3 left) {
        this.left = left;
    }

    public void setRight(Point3 right) {
        this.right = right;
    }

    public Point3 getLeft() {
        return left;
    }

    public Point3 getRight() {
        return right;
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
    public Vector3 getDirectionVector() {
        return null;
    }
}
