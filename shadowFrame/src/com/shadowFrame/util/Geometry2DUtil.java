package com.shadowFrame.util;

import com.shadowFrame.geometry.analytic.Vector2;
import com.shadowFrame.physics.shape.line.ILine2Operation;
import com.shadowFrame.physics.shape.line.Line2;
import com.shadowFrame.physics.shape.line.LineSegment2;
import com.shadowFrame.physics.shape.line.Ray2;
import com.shadowFrame.physics.shape.plane.Plane2;
import com.shadowFrame.physics.shape.point.FPoint2;
import com.shadowFrame.physics.shape.point.Point2;

/**
 * 2D几何工具类
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/11/5 17:53
 */
public class Geometry2DUtil {

    /**
     * 获得点到线垂直距离
     *
     * @param point 点
     * @param line  线
     * @return 垂距，=0时点在线上，>0点在线左侧，<0点在线右侧
     */
    public static float point2line(FPoint2 point, Line2 line) {
        float a = line.getA();
        float b = line.getB();
        float c = line.getC();
        return (float) ((a * point.getX() + b * point.getY() + c) / Math.sqrt(a * a + b * b));
    }

    /**
     * 判断两条直线是否平行
     *
     * @param left  直线一
     * @param right 直线二
     * @return 是否平行
     */
    public static boolean isParallelLine(ILine2Operation left, ILine2Operation right) {
        Vector2 current = left.getDirectionVector();
        Vector2 target = right.getDirectionVector();
        if (current.getX() == 0.0f) {
            if (target.getX() != 0.0f) {
                return false;
            }
            return true;
        }
        if (current.getY() == 0.0f) {
            if (target.getY() != 0.0f) {
                return false;
            }
            return true;
        }
        if (target.getX() / current.getX() != target.getY() / current.getY()) {
            return false;
        }
        return true;
    }

    /**
     * 判断两条直线是否垂直
     *
     * @param left  直线一
     * @param right 直线二
     * @return 是否垂直
     */
    public static boolean isVerticalLine(ILine2Operation left, ILine2Operation right) {
        Vector2 current = left.getDirectionVector();
        Vector2 target = right.getDirectionVector();
        return current.getX()*target.getX()+current.getY()* target.getY() == 0;
    }

    /**
     * 点到面的距离
     *
     * @param point 点
     * @param plane 面
     * @return 0点在面包围线上，>0点在面外，<0点在面内
     */
    public static int point2Plane(Point2 point, Plane2 plane) {
        int distance = 0;

        return distance;
    }

    /**
     * 点到面的距离
     *
     * @param point 点
     * @param plane 面
     * @return 0点在面包围线上，>0点在面外，<0点在面内
     */
    public static float point2Plane(FPoint2 point, Plane2 plane) {
        float distance = 0;

        return distance;
    }

    public static void line2Line(Line2 lineLeft, Line2 lineRight) {

    }

    public static void line2LineSegment(Line2 line, LineSegment2 lineSegment) {

    }

    public static void line2Ray(Line2 line, Ray2 ray) {

    }

    public static void line2Plane(Line2 line, Plane2 plane) {

    }

    public static void lineSegment2LineSegment(LineSegment2 lineSegmentLeft, LineSegment2 lineSegmentRight) {

    }

    public static void lineSegment2Ray(LineSegment2 lineSegment, Ray2 ray) {

    }

    public static void lineSegment2Plane(LineSegment2 lineSegment, Plane2 plane) {

    }

    public static void ray2Plane(Ray2 ray, Plane2 plane) {

    }

    public static void plane2Plane(Plane2 planeLeft, Plane2 planeRight) {

    }

}
