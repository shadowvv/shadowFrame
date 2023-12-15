package com.test.enumTest;

import java.io.IOException;

public class TestEnumMain {

    public void switchTest(TestEnum testEnum){
        switch (testEnum){
            case T1:
                System.out.println("T1");
                break;
            case T2:
                System.out.println("T2");
                break;
            case T3:
                System.out.println("T3");
                break;
            default:
        }
    }

    public static void main(String[] args) throws IOException {
        while (System.in.read() > 0){
            new TestEnumMain().switchTest(TestEnum.T1);
        }
    }
}
