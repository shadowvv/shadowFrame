package com.sample.spysics;

import com.shadowFrame.physics.shape.point.Point3;
import com.shadowFrame.physics.shape.solid.AABBBox;
import com.shadowFrame.physics.space.bspTree.BSPNode;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class SpaceSample {

    private final int SPACE_SIDE_LENGTH = 300;
    private AABBBox space;
    private List<AABBBox> staticObjects;

    public SpaceSample() {

    }

    public void init() {
        generateSpace();
        splitSpace();
    }

    private void generateSpace() {
        generateSpaceFrame();
        generateStaticObject();
        generateDynamicObject();
    }

    private void generateSpaceFrame() {
        space = new AABBBox(new Point3(0, 0, 0), new Point3(SPACE_SIDE_LENGTH, 0, 0), new Point3(0, SPACE_SIDE_LENGTH, 0), new Point3(0, 0, SPACE_SIDE_LENGTH));
    }

    private void generateStaticObject() {
        staticObjects = new ArrayList<>();
        for (int i = 0; i < 20; i++) {
            Random rand = new Random();
            Point3 base = new Point3(rand.nextInt(SPACE_SIDE_LENGTH), rand.nextInt(SPACE_SIDE_LENGTH), rand.nextInt(SPACE_SIDE_LENGTH));
            int xSide = rand.nextInt(SPACE_SIDE_LENGTH);
            int ySide = rand.nextInt(SPACE_SIDE_LENGTH);
            int zSide = rand.nextInt(SPACE_SIDE_LENGTH);
            AABBBox temp = new AABBBox(base, new Point3(base.getX() + xSide, base.getY(), base.getZ()), new Point3(base.getX(), base.getY() + ySide, base.getZ()), new Point3(base.getX(), base.getY(), base.getZ() + zSide));
            staticObjects.add(temp);
        }
    }

    private void generateDynamicObject() {
    }


    private void splitSpace() {
        BSPNode tree = BSPNode.buildBSPTree(staticObjects);
    }

    public void runTest() {
        findSpace();
        collisionTest();
    }

    private void findSpace() {
    }

    private void collisionTest() {
    }

    public static void main(String[] args) {
        SpaceSample test = new SpaceSample();
        test.init();
        test.runTest();
    }

}
