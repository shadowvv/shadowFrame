package com.shadowFrame.physics.shape.line;

import com.shadowFrame.geometry.analytic.Vector3;
import com.shadowFrame.physics.shape.IllegalGeometryOperationException;
import com.shadowFrame.physics.shape.point.FPoint3;

/**
 * 3D直线存储，使用点向式存储：(x-x0)/m=(y-y0)/n=(z-z0)/p=t
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/9/28 17:11
 */
public class Line3 implements ILine3Operation {

    private Vector3 vector;
    private FPoint3 point;

    public Line3() {
        vector = new Vector3();
        point = new FPoint3();
    }

    public Line3(Vector3 vector, FPoint3 point) {
        this.vector = vector;
        this.point = point;
    }

    public void setVector(Vector3 vector) {
        this.vector = vector;
    }

    public void setPoint(FPoint3 point) {
        this.point = point;
    }

    public Vector3 getVector() {
        return vector;
    }

    public FPoint3 getPoint() {
        return point;
    }

    @Override
    public float getZ(float x, float y) throws IllegalGeometryOperationException {
        if(vector.getX() == 0 && vector.getY() == 0){
            throw new IllegalGeometryOperationException("线与z轴平行,z值与x,y值无关.");
        }
        if(vector.getZ() == 0){
            return point.getZ();
        }
        if(vector.getX() != 0){
            float xParam = (x - point.getX())/vector.getX();
            if(vector.getY() == 0){
                return xParam*vector.getZ()+vector.getZ();
            }else{
                float yParam = (y - point.getY())/vector.getY();
                if(xParam != yParam){
                    throw new IllegalGeometryOperationException("x与y确定的点不在线上.");
                }
                return xParam*vector.getX()+vector.getX();
            }
        }else {
            float yParam = (y - point.getY())/vector.getY();
            return yParam*vector.getZ()+vector.getZ();
        }
    }

    @Override
    public float getY(float x, float z) throws IllegalGeometryOperationException {
        if(vector.getX() == 0 && vector.getZ() == 0){
            throw new IllegalGeometryOperationException("线与y轴平行,y值与x,z值无关.");
        }
        if(vector.getY() == 0){
            return point.getY();
        }
        if(vector.getX() != 0){
            float xParam = (x - point.getX())/vector.getX();
            if(vector.getZ() == 0){
                return xParam*vector.getY()+vector.getY();
            }else{
                float zParam = (z - point.getZ())/vector.getZ();
                if(xParam != zParam){
                    throw new IllegalGeometryOperationException("x与z确定的点不在线上.");
                }
                return zParam*vector.getY()+vector.getY();
            }
        }else {
            float zParam = (z - point.getZ())/vector.getZ();
            return zParam*vector.getY()+vector.getY();
        }
    }

    @Override
    public float getX(float y, float z) throws IllegalGeometryOperationException {
        if(vector.getY() == 0 && vector.getZ() == 0){
            throw new IllegalGeometryOperationException("线与x轴平行,x值与y,Z值无关.");
        }
        if(vector.getX() == 0){
            return point.getX();
        }
        if(vector.getY() != 0){
            float yParam = (y - point.getY())/vector.getY();
            if(vector.getZ() == 0){
                return yParam*vector.getX()+vector.getX();
            }else{
                float zParam = (z - point.getZ())/vector.getZ();
                if(yParam != zParam){
                    throw new IllegalGeometryOperationException("y与z确定的点不在线上.");
                }
                return zParam*vector.getY()+vector.getY();
            }
        }else {
            float zParam = (z - point.getZ())/vector.getZ();
            return zParam*vector.getY()+vector.getY();
        }
    }

    @Override
    public boolean isPointOnLine(FPoint3 point) throws IllegalGeometryOperationException {
        if(vector.getX() == 0 && vector.getY() == 0){
            return point.getX() == this.point.getY() && point.getY() == this.point.getY();
        }
        if(vector.getX() == 0 && vector.getZ() == 0){
            return point.getX() == this.point.getX() && point.getZ() == this.point.getZ();
        }
        if(vector.getY() == 0 && vector.getZ() == 0){
            return point.getY() == this.point.getY() && point.getZ() == this.point.getZ();
        }
        float z = getZ(point.getX(),point.getY());
        return point.getZ() == z;
    }

    @Override
    public float point2LineDistance(FPoint3 point) {
        Float x = null;
        Float t = null;
        if (this.vector.getX() != 0){
            x = this.point.getX()+1.0f;
            t = 1/this.vector.getX();
        }
        Float y = null;
        if (this.vector.getY() != 0){
            if(t != null){
                y = t*this.vector.getY()+this.point.getY();
            }else{
                y = this.point.getY()+1.0f;
                t = 1/this.vector.getY();
            }
        }
        Float z = null;
        if (this.vector.getZ() != 0){
            if(t != null){
                z = t*this.vector.getZ()+this.point.getZ();
            }else{
                z = this.point.getY()+1.0f;
                t = 1/this.vector.getY();
            }
        }
        if(x == null){
            x = t*this.vector.getX()+this.point.getX();
        }
        if(y == null){
            y = t*this.vector.getY()+this.point.getY();
        }
        if(z == null){
            z = t*this.vector.getZ()+this.point.getZ();
        }
        Vector3 AB = new Vector3(x - this.point.getX(),y - this.point.getY(),z - this.point.getZ());
        Vector3 AP = new Vector3(point.getX() - this.point.getX(),point.getY() - this.point.getY(),point.getZ() - this.point.getZ());
        Vector3 areaVector = new Vector3(AB.getY()*AP.getZ()-AP.getY()*AB.getZ(),AP.getX()*AB.getZ() - AB.getX()*AB.getZ(),AB.getX()*AP.getY() - AP.getX()*AB.getX());
        float dis = (areaVector.getX()*areaVector.getX()+areaVector.getY()*areaVector.getY()+areaVector.getZ()*areaVector.getZ())/(AB.getX()*AB.getX()+AB.getY()*AB.getY()+AB.getZ()*AB.getZ());
        return (float) Math.sqrt(dis);
    }

    @Override
    public Vector3 getDirectionVector() {
        return vector;
    }
}
