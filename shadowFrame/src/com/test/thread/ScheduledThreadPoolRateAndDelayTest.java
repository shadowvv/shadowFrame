package com.test.thread;

import java.util.concurrent.*;

/**
 * 测试周期线程池scheduleAtFixedRate和scheduleWithFixedDelay的区别
 * @author shadow
 * @version 1.0
 */
public class ScheduledThreadPoolRateAndDelayTest {

    public static void main(String[] args) {
        //fixedRate为固定的周期，无论runnable的运行时间
        ScheduledExecutorService RateService = Executors.newScheduledThreadPool(3);
        RateService.scheduleAtFixedRate(new Runnable() {
            @Override
            public void run() {
                System.out.println("Rate:"+System.currentTimeMillis()+":"+Thread.currentThread()+":1");
                try {
                    Thread.sleep(2000);
                } catch (InterruptedException exception) {
                    exception.printStackTrace();
                }
            }
        }, 0, 1000, TimeUnit.MILLISECONDS);
        RateService.scheduleAtFixedRate(new Runnable() {
            @Override
            public void run() {
                System.out.println("Rate:"+System.currentTimeMillis()+":"+Thread.currentThread()+":2");
                try {
                    Thread.sleep(2000);
                } catch (InterruptedException exception) {
                    exception.printStackTrace();
                }
            }
        }, 0, 1000, TimeUnit.MILLISECONDS);
        //fixedDelay是在runnable的运行完成之后，等待一个周期运行下一个任务
//        ScheduledExecutorService delayService = Executors.newScheduledThreadPool(3);
//        delayService.scheduleWithFixedDelay(new Runnable() {
//            @Override
//            public void run() {
//                System.out.println("delay:"+System.currentTimeMillis()+":"+Thread.currentThread());
//                try {
//                    Thread.sleep(1000);
//                } catch (InterruptedException exception) {
//                    exception.printStackTrace();
//                }
//            }
//        }, 0, 1000, TimeUnit.MILLISECONDS);
    }

}
