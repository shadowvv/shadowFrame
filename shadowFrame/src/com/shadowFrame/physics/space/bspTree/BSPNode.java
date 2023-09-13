package com.shadowFrame.physics.space.bspTree;

import com.shadowFrame.physics.shape.line.LineSegment3;
import com.shadowFrame.physics.shape.plane.Plane3;
import com.shadowFrame.physics.shape.solid.AABBBox;
import com.shadowFrame.util.Geometry3DUtil;

import java.util.ArrayList;
import java.util.List;

/**
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/21 11:45
 */
public class BSPNode<T> {

    private T node;
    private BSPNode left;
    private BSPNode right;

    public static BSPNode buildBSPTree(List<AABBBox> staticObjects) {
        BSPNode root = new BSPNode();
        List<AABBBox> source = new ArrayList<>();
        source.addAll(staticObjects);
        List<AABBBox> left = new ArrayList<>();
        List<AABBBox> right = new ArrayList<>();
        trySplitSpace(root, source, left, right);
        if (left.size() > 1) {
            buildBSPTree(left);
        }
        if (right.size() > 1) {
            buildBSPTree(right);
        }
        return root;
    }

    private static void trySplitSpace(BSPNode root, List<AABBBox> source, List<AABBBox> left, List<AABBBox> right) {
        int balance = Integer.MAX_VALUE;
        for (int i = 0; i < source.size() - 1; i++) {
            for (int j = i + 1; i < source.size(); j++) {
                AABBBox leftBox = source.get(i);
                AABBBox rightBox = source.get(j);
                balance = trySplitSpace(root, leftBox, rightBox, source, left, right, balance);
            }
        }
    }

    private static int trySplitSpace(BSPNode root, AABBBox leftBox, AABBBox rightBox, List<AABBBox> source, List<AABBBox> left, List<AABBBox> right, int balance) {
        List<AABBBox> tempLeft = new ArrayList<>();
        List<AABBBox> tempRight = new ArrayList<>();
        Plane3 splitPlane = findSplitPlane(leftBox, rightBox);
        filterObject(splitPlane, source, tempLeft, tempRight);
        int newBalance = tempLeft.size() >= tempRight.size() ? tempLeft.size() - tempRight.size() : tempRight.size() - tempLeft.size();
        if (newBalance < balance) {
            left = tempLeft;
            right = tempRight;
            balance = newBalance;
        }
        return balance;
    }

    private static Plane3 findSplitPlane(AABBBox leftBox, AABBBox rightBox) {
//        LineSegment3 p2p = new LineSegment3(leftBox.getFSphereBoxCenter(), rightBox.getFSphereBoxCenter());
//        return Geometry3DUtil.findLineSegmentMidVerticalPlane(p2p);
        return null;
    }

    private static void filterObject(Plane3 splitPlane, List<AABBBox> source, List<AABBBox> tempLeft, List<AABBBox> tempRight) {
        for (AABBBox box : source) {
            int relation = Geometry3DUtil.getAABBBoxAndPlaneRelation(box, splitPlane);
            if (relation > 0) {
                tempLeft.add(box);
            } else if (relation < 0) {
                tempRight.add(box);
            } else {
                tempLeft.add(box);
                tempRight.add(box);
            }
        }
    }

}
