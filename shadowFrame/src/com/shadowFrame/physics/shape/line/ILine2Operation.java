package com.shadowFrame.physics.shape.line;

import com.shadowFrame.geometry.analytic.Vector2;
import com.shadowFrame.physics.shape.IllegalGeometryOperationException;
import com.shadowFrame.physics.shape.point.FPoint2;
import com.shadowFrame.util.Geometry2DUtil;

/**
 * 2D类线操作接口
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/11/10 16:14
 */
public interface ILine2Operation {

    /**
     * 通过x值，获得y值
     *
     * @param x x值
     * @return y值
     * @throws IllegalGeometryOperationException 当x值不在线上时抛出异常
     */
    float getY(float x) throws IllegalGeometryOperationException;

    /**
     * 通过y值获得x值
     *
     * @param y y值
     * @return x值
     * @throws IllegalGeometryOperationException 当y值不在线上时抛出异常
     */
    float getX(float y) throws IllegalGeometryOperationException;

    /**
     * 判断点是否在线上
     *
     * @param point 点
     * @return 是否在线上
     */
    boolean isPointOnLine(FPoint2 point) throws IllegalGeometryOperationException;

    /**
     * 获得点到线的垂距
     *
     * @param point 点
     * @return 点到线的垂距
     */
    float point2LineDistance(FPoint2 point);

    /**
     * 目标线是否与当前线平行
     *
     * @param line 目标线
     * @return 是否平行
     */
    default boolean isParallelLine(ILine2Operation line){
        return Geometry2DUtil.isParallelLine(this, line);
    }

    /**
     * 目标线是否与当前线垂直
     *
     * @param line 目标线
     * @return 是否垂直
     */
    default boolean isVerticalLine(ILine2Operation line){
        return Geometry2DUtil.isVerticalLine(this, line);
    }

    /**
     * @return 线的方向向量
     */
    Vector2 getDirectionVector();

    /**
     * @return 线的法向量
     */
    Vector2 getNormalVector();
}
