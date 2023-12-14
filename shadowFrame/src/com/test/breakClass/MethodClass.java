package com.test.breakClass;

import java.util.ArrayList;

public class MethodClass {

    public static MethodClass inst = null;

    public static MethodClass getInstance(){
        if (inst == null){
            MethodClass inst = new MethodClass();
        }
        return inst;
    }

    public static void addStaticMethod(int test1, String test2, ArrayList<Integer> test3){
        System.out.println("addStaticMethod");
        System.out.println(test1);
        System.out.println(test2);
        System.out.println(test3);
    }

    public void addMemberMethod(int test1, String test2, ArrayList<Integer> test3){
        System.out.println("addMemberMethod");
        System.out.println(test1);
        System.out.println(test2);
        System.out.println(test3);
    }

}
