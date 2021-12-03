package com.shadowFrame.physics.shape.point;

/**
 * 3D int点数据
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/9/28 16:37
 */
public class Point3 {

    private int x;
    private int y;
    private int z;

    public Point3() {
        this.x = 0;
        this.y = 0;
        this.z = 0;
    }

    public Point3(int x, int y, int z) {
        this.x = x;
        this.y = y;
        this.z = z;
    }

    public void setX(int x) {
        this.x = x;
    }

    public void setY(int y) {
        this.y = y;
    }

    public void setZ(int z) {
        this.z = z;
    }

    public int getX() {
        return x;
    }

    public int getY() {
        return y;
    }

    public int getZ() {
        return z;
    }
}
