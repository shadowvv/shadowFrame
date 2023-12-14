package com.test.breakClass;

import javassist.*;

import java.util.ArrayList;

public class BreakClass {

    public int invokeFromOtherSide(int test1, String test2, ArrayList<Integer> test3) {

        System.out.println(test1);
        System.out.println(test2);
        System.out.println(test3);

        return 0;
    }

}
