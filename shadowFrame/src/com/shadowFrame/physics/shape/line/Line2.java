package com.shadowFrame.physics.shape.line;

import com.shadowFrame.geometry.analytic.Vector2;
import com.shadowFrame.physics.shape.IllegalGeometryOperationException;
import com.shadowFrame.physics.shape.point.FPoint2;
import com.shadowFrame.util.Geometry2DUtil;

/**
 * 2D直线表示，使用公式Ax+By+C=0
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/9/28 17:10
 */
public class Line2 implements ILine2Operation {

    private float a;
    private float b;
    private float c;

    public Line2() {
        a = 0.0f;
        b = 0.0f;
        c = 0.0f;
    }

    public Line2(float a, float b, float c) {
        this.a = a;
        this.b = b;
        this.c = c;
    }

    public float getA() {
        return a;
    }

    public void setA(float a) {
        this.a = a;
    }

    public float getB() {
        return b;
    }

    public void setB(float b) {
        this.b = b;
    }

    public float getC() {
        return c;
    }

    public void setC(float c) {
        this.c = c;
    }

    @Override
    public float getY(float x) throws IllegalGeometryOperationException {
        if (b == 0.0f) {
            throw new IllegalGeometryOperationException("线与y轴平行,y值与x值无关.");
        }
        return -(a * x + c) / b;
    }

    @Override
    public float getX(float y) throws IllegalGeometryOperationException {
        if (a == 0.0f) {
            throw new IllegalGeometryOperationException("线与x轴平行,x值与y值无关.");
        }
        return -(b * y + c) / a;
    }

    @Override
    public boolean isPointOnLine(FPoint2 point) {
        if (a == 0.0f) {
            if (point.getY() != -(c / b)) {
                return false;
            }
            return true;
        }
        if (b == 0.0f) {
            if (point.getX() != -(c / a)) {
                return false;
            }
            return true;
        }
        try {
            float y = getY(point.getX());
            return y == point.getY();
        } catch (IllegalGeometryOperationException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public float point2LineDistance(FPoint2 point) {
        return Geometry2DUtil.point2line(point, this);
    }

    @Override
    public Vector2 getDirectionVector() {
        return new Vector2(b, -a);
    }

    @Override
    public Vector2 getNormalVector() {
        return new Vector2(a, b);
    }
}
