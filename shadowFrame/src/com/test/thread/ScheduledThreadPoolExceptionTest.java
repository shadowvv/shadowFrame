package com.test.thread;

import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/**
 * 周期线程池异常处理测试
 *
 * @author shadow
 * @version 1.0
 */
public class ScheduledThreadPoolExceptionTest {

    /**自定义周期线程池*/
    private ExecutorService threadPool = Executors.newFixedThreadPool(3);
    /**自定义周期线程池驱动器*/
    private ExecutorService driver = Executors.newScheduledThreadPool(1);

    /**jdk周期线程池*/
    private ExecutorService scheduledThreadPool = Executors.newScheduledThreadPool(3);

    public ScheduledThreadPoolExceptionTest() {

    }

    private void start(){
        //测试jdk的ScheduledThreadPool,当发生有没有捕获的异常时候的表现。
        ((ScheduledThreadPoolExecutor)scheduledThreadPool).scheduleAtFixedRate(new Runnable() {
            @Override
            public void run() {
                int i = new Random().nextInt(20);
                System.out.println(Thread.currentThread()+" JDK");
                if(i == 1){
                    System.out.println(Thread.currentThread()+" Exception JDK");
                    Long a = null;
                    a.hashCode();
                }
            }
        },1000,100, TimeUnit.MILLISECONDS);

        //测试使用自定义线程驱动线程池的周期线程池,当发生有没有捕获的异常时候的表现。
        ((ScheduledThreadPoolExecutor)driver).scheduleAtFixedRate(new Runnable() {
            @Override
            public void run() {
                threadPool.submit(new Runnable() {
                    @Override
                    public void run() {
                        int i = new Random().nextInt(20);
                        System.out.println(Thread.currentThread()+" user");
                        if(i == 1){
                            System.out.println(Thread.currentThread()+" Exception user");
                            Long a = null;
                            a.hashCode();
                        }
                    }
                });
            }
        },1000,300, TimeUnit.MILLISECONDS);
    }

    public static void main(String[] arg){
        //测试结果：当jdk的周期线程池发生没有被捕获的异常时，整个线程池会变为wait状态。逻辑停止。
        //使用自定义线程驱动线程池发生没有被捕获的异常时，整个线程池正常，逻辑正常
        new ScheduledThreadPoolExceptionTest().start();
    }
}
