package com.test.reflectTest;


public class ReflectTestMethod {

    @ReflectTestMethodAnnotation
    public boolean handleTest(String message){
        int i = 0;
        int j = 0;
        int k = i+j;
        return true;
    }

}
