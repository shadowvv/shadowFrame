package com.test.luaJ;

import org.luaj.vm2.Globals;
import org.luaj.vm2.LuaNumber;
import org.luaj.vm2.LuaValue;
import org.luaj.vm2.lib.jse.JsePlatform;
import org.luaj.vm2.luajc.LuaJC;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.util.concurrent.atomic.AtomicInteger;

/**
 * @author shadow
 * @version 1.0.0
 * @time 2021/12/8 11:40
 */
public class LuaJTest {

    public static void main(String[] args) throws InvocationTargetException, IllegalAccessException, MalformedURLException {

        String luaStr = "C:\\Users\\zhaopuyang\\IdeaProjects\\shadowFrame\\shadowFrame\\src\\com\\test\\luaJ\\lua2.lua";

        Globals globals = JsePlatform.standardGlobals();
        // 使用luajc编译器，比默认luac编译器快3倍
        LuaJC.install(globals);
        LuaValue doFile = globals.get("dofile");
        doFile.call(LuaValue.valueOf(luaStr));

        final LuaValue luaValue = globals.get("test");
        AtomicInteger test = new AtomicInteger(0);
        for (int i = 0; i < 100; i++) {
            luaValue.invoke(LuaNumber.valueOf(1));
        }
    }

}
