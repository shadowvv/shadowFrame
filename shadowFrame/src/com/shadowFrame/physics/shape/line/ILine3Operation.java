package com.shadowFrame.physics.shape.line;

import com.shadowFrame.geometry.analytic.Vector3;
import com.shadowFrame.physics.shape.IllegalGeometryOperationException;
import com.shadowFrame.physics.shape.point.FPoint3;

/**
 * 3D类线操作接口
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/12/3 18:16
 */
public interface ILine3Operation {

    /**
     * 通过x,y值，获得z值
     *
     * @param x x值
     * @param y y值
     * @return z值
     * @throws IllegalGeometryOperationException 当x或y值不在线上时抛出异常
     */
    float getZ(float x, float y) throws IllegalGeometryOperationException;

    /**
     * 通过x,z值，获得y值
     *
     * @param x x值
     * @param z z值
     * @return y值
     * @throws IllegalGeometryOperationException 当x或z值不在线上时抛出异常
     */
    float getY(float x, float z) throws IllegalGeometryOperationException;

    /**
     * 通过y,z值，获得x值
     *
     * @param y y值
     * @param z z值
     * @return x值
     * @throws IllegalGeometryOperationException 当y或z值不在线上时抛出异常
     */
    float getX(float y, float z) throws IllegalGeometryOperationException;

    /**
     * 判断点是否在线上
     *
     * @param point 点
     * @return 是否在线上
     */
    boolean isPointOnLine(FPoint3 point) throws IllegalGeometryOperationException;

    /**
     * 获得点到线的垂距
     *
     * @param point 点
     * @return 点到线的垂距
     */
    float point2LineDistance(FPoint3 point);

    /**
     * 目标线是否与当前线平行
     *
     * @param line 目标线
     * @return 是否平行
     */
    boolean isParallelLine(ILine3Operation line);

    /**
     * @return 线的方向向量
     */
    Vector3 getDirectionVector();

    /**
     * @return 线的法向量
     */
    Vector3 getNormalVector();
}
