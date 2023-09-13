package com.shadowFrame.physics.shape.line;

import com.shadowFrame.geometry.analytic.Vector2;
import com.shadowFrame.physics.shape.IllegalGeometryOperationException;
import com.shadowFrame.physics.shape.point.FPoint2;
import com.shadowFrame.util.Geometry2DUtil;

/**
 * 2D射线表示。点向式公式vector.x*(y - point.y)=vector.y*(x - point.x)
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/11/8 16:36
 */
public class Ray2 implements ILine2Operation {

    private FPoint2 point;
    private Vector2 vector;

    public Ray2() {
        point = new FPoint2();
        vector = new Vector2();
    }

    public Ray2(FPoint2 point, Vector2 vector) {
        this.point = point;
        this.vector = vector;
    }

    public void setPoint(FPoint2 point) {
        this.point = point;
    }

    public void setVector(Vector2 vector) {
        this.vector = vector;
    }

    public FPoint2 getPoint() {
        return point;
    }

    public Vector2 getVector() {
        return vector;
    }

    /**
     * @return 转换为线
     */
    public Line2 toLine() {
        float a = vector.getY();
        float b = -vector.getX();
        float c = vector.getX() * point.getY() - vector.getY() * point.getX();
        return new Line2(a, b, c);
    }

    @Override
    public float getY(float x) throws IllegalGeometryOperationException {
        if (vector.getX() == 0) {
            throw new IllegalGeometryOperationException("线与y轴平行,y值与x值无关.");
        }
        if (vector.getX() > 0 && x < point.getX()) {
            throw new IllegalGeometryOperationException("x值越界.");
        }
        if (vector.getX() < 0 && x > point.getX()) {
            throw new IllegalGeometryOperationException("x值越界.");
        }
        if (vector.getY() == 0) {
            return point.getY();
        }
        float y = (vector.getY() * (x - point.getX()) + vector.getX() * point.getY()) / vector.getX();
        return y;
    }

    @Override
    public float getX(float y) throws IllegalGeometryOperationException {
        if (vector.getY() == 0) {
            throw new IllegalGeometryOperationException("线与x轴平行,x值与y值无关.");
        }
        if (vector.getY() > 0 && y < point.getY()) {
            throw new IllegalGeometryOperationException("y值越界.");
        }
        if (vector.getY() < 0 && y > point.getY()) {
            throw new IllegalGeometryOperationException("y值越界.");
        }
        if (vector.getX() == 0) {
            return point.getX();
        }
        float x = (vector.getX() * (y - point.getY()) + vector.getY() * point.getX()) / vector.getY();
        return x;
    }

    @Override
    public boolean isPointOnLine(FPoint2 point) throws IllegalGeometryOperationException {
        float x = point.getX();
        float y = point.getY();
        if (vector.getX() > 0 && x < this.point.getX()) {
            throw new IllegalGeometryOperationException("x值越界.");
        }
        if (vector.getX() < 0 && x > this.point.getX()) {
            throw new IllegalGeometryOperationException("x值越界.");
        }
        if (vector.getY() > 0 && y < this.point.getY()) {
            throw new IllegalGeometryOperationException("y值越界.");
        }
        if (vector.getY() < 0 && y > this.point.getY()) {
            throw new IllegalGeometryOperationException("y值越界.");
        }
        float targetY = getY(x);
        return targetY == y;
    }

    @Override
    public float point2LineDistance(FPoint2 point) {
        return Geometry2DUtil.point2line(point, toLine());
    }

    @Override
    public Vector2 getDirectionVector() {
        return vector;
    }

    @Override
    public Vector2 getNormalVector() {
        return new Vector2(vector.getY(), -vector.getX());
    }
}
