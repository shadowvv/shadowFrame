package com.shadowFrame.physics.shape.line;

import com.shadowFrame.geometry.analytic.Vector2;
import com.shadowFrame.physics.shape.IllegalGeometryOperationException;
import com.shadowFrame.physics.shape.point.FPoint2;
import com.shadowFrame.util.Geometry2DUtil;

/**
 * 2D线段表示
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/9/28 17:11
 */
public class LineSegment2 implements ILine2Operation {

    private FPoint2 left;
    private FPoint2 right;

    public LineSegment2() {
        left = new FPoint2();
        right = new FPoint2();
    }

    public LineSegment2(FPoint2 left, FPoint2 right) {
        this.left = left;
        this.right = right;
    }

    public FPoint2 getLeft() {
        return left;
    }

    public void setLeft(FPoint2 left) {
        this.left = left;
    }

    public FPoint2 getRight() {
        return right;
    }

    public void setRight(FPoint2 right) {
        this.right = right;
    }

    /**
     * @return 获得x的最小值
     */
    public float getMinX() {
        return left.getX() < right.getX() ? left.getX() : right.getX();
    }

    /**
     * @return 获得x的最大值
     */
    public float getMaxX() {
        return left.getX() > right.getX() ? left.getX() : right.getX();
    }

    /**
     * @return 获得y的最小值
     */
    public float getMinY() {
        return left.getY() < right.getY() ? left.getY() : right.getY();
    }

    /**
     * @return 获得y的最大值
     */
    public float getMaxY() {
        return left.getY() > right.getY() ? left.getY() : right.getY();
    }

    /**
     * @return 转换为线
     */
    public Line2 toLine() {
        if (left.getX() == right.getX()) {
            return new Line2(1.0f, 0.0f, left.getX());
        }
        if (left.getY() == right.getY()) {
            return new Line2(0.0f, 1.0f, left.getY());
        }
        float a = left.getX() - right.getX();
        float b = left.getY() - right.getY();
        float c = left.getX() * left.getX() - left.getY() * left.getY() + left.getY() * right.getY() - left.getX() * right.getX();
        return new Line2(a, b, c);
    }

    @Override
    public float getY(float x) throws IllegalGeometryOperationException {
        if (x > getMaxX() || x < getMinX()) {
            throw new IllegalGeometryOperationException("x值越界.");
        }
        float xD = left.getX() - right.getX();
        if (xD == 0.0f) {
            throw new IllegalGeometryOperationException("线与y轴平行,y值与x值无关.");
        }
        if (left.getY() == right.getY()) {
            return left.getY();
        }
        float k = (left.getX() - right.getX()) / (left.getY() - right.getY());
        float b = left.getY() - left.getX() * k;
        return x * k + b;
    }

    @Override
    public float getX(float y) throws IllegalGeometryOperationException {
        if (y > getMaxY() || y < getMinY()) {
            throw new IllegalGeometryOperationException("y值越界.");
        }
        float yD = left.getY() - right.getY();
        if (yD == 0.0f) {
            throw new IllegalGeometryOperationException("线与x轴平行,x值与y值无关.");
        }
        if (left.getX() == right.getX()) {
            return left.getX();
        }
        float k = (left.getX() - right.getX()) / (left.getY() - right.getY());
        float b = left.getY() - left.getX() * k;
        return (y - b) / k;
    }

    @Override
    public boolean isPointOnLine(FPoint2 point) throws IllegalGeometryOperationException {
        if (point.getX() > getMaxX() || point.getX() < getMinX()) {
            return false;
        }
        if (point.getY() > getMaxY() || point.getY() < getMinY()) {
            return false;
        }
        float y = getY(point.getX());
        return y == point.getY();
    }

    @Override
    public float point2LineDistance(FPoint2 point) {
        return Geometry2DUtil.point2line(point, toLine());
    }

    @Override
    public Vector2 getDirectionVector() {
        return new Vector2(left.getY() - right.getY(), right.getX() - left.getX());
    }

    @Override
    public Vector2 getNormalVector() {
        return new Vector2(left.getX() - right.getX(), left.getY() - right.getY());
    }
}
