package com.shadowFrame.util;

import com.shadowFrame.geometry.analytic.Vector3;
import com.shadowFrame.physics.shape.line.ILine3Operation;
import com.shadowFrame.physics.shape.line.LineSegment3;
import com.shadowFrame.physics.shape.plane.Plane3;
import com.shadowFrame.physics.shape.solid.AABBBox;

import java.util.ArrayList;
import java.util.Objects;

/**
 * 3D类线操作接口
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/21 18:10
 */
public class Geometry3DUtil {

    public static boolean isParallelLine(ILine3Operation left, ILine3Operation right) {
        Vector3 leftDirection = left.getDirectionVector();
        Vector3 rightDirection = right.getDirectionVector();

        Float xParam = null;
        if(leftDirection.getX() == 0){
            if(rightDirection.getX() != 0){
                return false;
            }else {
                xParam = 0.0f;
            }
        }else {
            xParam = rightDirection.getX()/leftDirection.getX();
        }

        Float yParam = null;
        if(leftDirection.getY() == 0){
            if(rightDirection.getY() != 0){
                return false;
            }else {
                yParam = 0.0f;
            }
        }else {
            yParam = rightDirection.getY()/leftDirection.getY();
        }

        Float zParam = null;
        if(leftDirection.getZ() == 0){
            if(rightDirection.getZ() != 0){
                return false;
            }else {
                zParam = 0.0f;
            }
        }else {
            zParam = rightDirection.getZ()/leftDirection.getZ();
        }

        ArrayList<Float> param = new ArrayList<>();
        if(xParam != 0.0f){
            param.add(xParam);
        }
        if(yParam == 0.0f){
            param.add(yParam);
        }
        if(zParam == 0.0f){
            param.add(zParam);
        }

        if(param.size() == 0){
            return false;
        }
        if(param.size() == 1){
            return true;
        }
        Float finalParam = null;
        for (Float temp : param) {
            if (finalParam == null) {
                finalParam = temp;
            }
            if(!Objects.equals(finalParam, temp)){
                return false;
            }
        }
        return true;
    }

    public static boolean isVerticalLine(ILine3Operation left, ILine3Operation right) {
        Vector3 leftDirection = left.getDirectionVector();
        Vector3 rightDirection = right.getDirectionVector();
        return leftDirection.getX()*rightDirection.getX()+leftDirection.getY()*rightDirection.getY()+leftDirection.getZ()*rightDirection.getZ() == 0;
    }

    public static Plane3 findLineSegmentMidVerticalPlane(LineSegment3 lineSegment) {
        Plane3 plane = new Plane3();

        return plane;
    }

    public static int getAABBBoxAndPlaneRelation(AABBBox box, Plane3 plane) {
        return 0;
    }
}
