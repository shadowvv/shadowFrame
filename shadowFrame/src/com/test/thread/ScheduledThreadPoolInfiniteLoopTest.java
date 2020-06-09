package com.test.thread;

import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/**
 * 周期线程池死循环测试
 *
 * @author shadow
 * @version 1.0
 */
public class ScheduledThreadPoolInfiniteLoopTest {

    /**
     * 自定义周期线程池
     */
    private ExecutorService threadPool = Executors.newFixedThreadPool(3);
    /**
     * 自定义周期线程池驱动器
     */
    private ExecutorService driver = Executors.newScheduledThreadPool(1);

    /**
     * jdk周期线程池
     */
    private ExecutorService scheduledThreadPool = Executors.newScheduledThreadPool(3);

    public ScheduledThreadPoolInfiniteLoopTest() {

    }

    private void start() {
        //测试jdk的ScheduledThreadPool,当发生死循环的表现。
        ((ScheduledThreadPoolExecutor) scheduledThreadPool).scheduleAtFixedRate(new Runnable() {
            @Override
            public void run() {
                int i = new Random().nextInt(20);
                System.out.println(Thread.currentThread()+" JDK");
                if (i == 1) {
                    System.out.println(Thread.currentThread()+" infinite loop JDK");
                    while (true) {
                    }
                }
            }
        }, 1000, 100, TimeUnit.MILLISECONDS);

        //测试使用自定义线程驱动线程池的周期线程池,当发生死循环的表现。
        ((ScheduledThreadPoolExecutor) driver).scheduleAtFixedRate(new Runnable() {
            @Override
            public void run() {
                threadPool.submit(new Runnable() {
                    @Override
                    public void run() {
                        int i = new Random().nextInt(20);
                        System.out.println(Thread.currentThread()+" user");
                        if (i == 1) {
                            System.out.println(Thread.currentThread()+" infinite loop user");
                            while (true) {
                            }
                        }
                    }
                });
                System.out.println(Thread.currentThread()+"dispatch Runnable user");
            }
        }, 1000, 300, TimeUnit.MILLISECONDS);
    }

    public static void main(String[] arg) {
        //测试结果：当jdk的周期线程池发生死循环时，整个线程池某一个线程会变为Running状态,其他线程wait状态。逻辑停止。
        //使用自定义线程驱动线程池发生死循环时，整个线程池摸一个线程变为Running状态，其他线程可正常运行，直到所有线程发生死循环，逻辑停止。但自定义线程会继续投递消息
        new ScheduledThreadPoolInfiniteLoopTest().start();
    }
}