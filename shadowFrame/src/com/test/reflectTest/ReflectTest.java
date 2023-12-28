package com.test.reflectTest;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ReflectTest {

    private static final int TEST_COUNT = 5*10000;
    private static Object targetObject;
    public static void main(String[] args) throws IOException, ClassNotFoundException, InvocationTargetException, IllegalAccessException, InstantiationException, NoSuchMethodException {
        Method method = GetTargetMethod();
        if (method != null){
            method.invoke(targetObject,"Test");
        }

        ReflectTestMethod noReflect = new ReflectTestMethod();
        long beforeTime = System.currentTimeMillis();
        for (int i = 0;i<TEST_COUNT;i++){
            noReflect.handleTest("no reflect");
        }
        long endTime = System.currentTimeMillis();
        System.out.println("不使用反射调用调用耗时:"+(endTime-beforeTime));

        beforeTime = System.currentTimeMillis();
        for (int i = 0;i<TEST_COUNT;i++){
            method.invoke(targetObject,"Test");
        }
        endTime = System.currentTimeMillis();
        System.out.println("使用反射调用调用耗时:"+(endTime-beforeTime));

        beforeTime = System.currentTimeMillis();
        for (int i = 0;i<TEST_COUNT;i++){
            Method methodTemp = GetTargetMethod();
            if (methodTemp != null){
                methodTemp.invoke(targetObject,"Test");
            }
        }
        endTime = System.currentTimeMillis();
        System.out.println("每次都检索方法,使用反射调用调用耗时:"+(endTime-beforeTime));
    }

    private static Method GetTargetMethod() throws ClassNotFoundException, IOException, InstantiationException, IllegalAccessException, NoSuchMethodException, InvocationTargetException {
        File dir = new File(".\\shadowFrame\\target\\classes\\com\\test\\reflectTest");
        if (!dir.exists() || !dir.isDirectory()) {
            return null;
        }
        File[] dirfiles = dir.listFiles(file -> (true && file.isDirectory()) || (file.getName().endsWith(".class")));

        for (File file : dirfiles) {
            String className = file.getName().substring(0, file.getName().length() - 6);
            Class<?> targetClass = Thread.currentThread().getContextClassLoader().loadClass("com.test.reflectTest" + '.' + className);
            targetObject = targetClass.getDeclaredConstructor().newInstance();
            for (Method method : targetClass.getMethods()){
                ReflectTestMethodAnnotation annotation = method.getAnnotation(ReflectTestMethodAnnotation.class);
                if (annotation != null){
                    return method;
                }
            }
        }
        return null;
    }

}
