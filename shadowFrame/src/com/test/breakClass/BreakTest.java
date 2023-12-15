package com.test.breakClass;


import javassist.*;


import java.io.IOException;
import java.util.ArrayList;

public class BreakTest {

    public static void main(String[] args) throws IOException, NotFoundException, CannotCompileException {

        // 获取默认 ClassPool
        ClassPool cp = ClassPool.getDefault();
        cp.appendClassPath(new LoaderClassPath(Thread.currentThread().getContextClassLoader()));
        cp.importPackage("com.test.breakClass.MethodClass");
        // 找到 CtClass
        CtClass cc = cp.get("com.test.breakClass.BreakClass");
        // 增强方法
        CtMethod m = cc.getDeclaredMethod("invokeFromOtherSide");
        // 前面插入代码
        m.insertBefore("{ " +
                "MethodClass a = new MethodClass(); " +
                "a.addMemberMethod(2,\"333\",null); " +
                "}");
        // 后面插入代码
        m.insertAfter("{ System.out.println(\"javassist end\"); }");

        cc.toClass();
        cc.detach();

        BreakClass a = new BreakClass();
        a.invokeFromOtherSide(1,"2",new ArrayList<>());
    }

}
