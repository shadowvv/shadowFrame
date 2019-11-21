package com.test.common;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/**
 * ExectorService中execute和submit的区别
 * @author shadow
 *
 */
public class ExecutorSubmitExecuteTest {

	private static ExecutorService executor = Executors.newFixedThreadPool(4);

	public static void main(String[] args) {
		List<Future<?>> futureList = new ArrayList<Future<?>>();
		for (int i = 0; i < 20; i++) {
			/**
			 * 抛出异常之后线程会关闭，当新任务进来后会创建一个新的线程执行任务
			 */
//			executor.execute(new Runnable() {
//				@Override
//				public void run() {
//					System.out.println("thread:" + Thread.currentThread().getName());
//					@SuppressWarnings("unused")
//					int j = 1/0;
//				}
//			});
			/**
			 * 抛出异常之后线程不会关闭，但是如果不捕获异常，异常将被丢弃
			 */
			Future<?> future = executor.submit(new Runnable() {
				@Override
				public void run() {
					System.out.println("thread:" + Thread.currentThread().getName());
					@SuppressWarnings("unused")
					int j = 1/0;
				}
			});
			futureList.add(future);
		}
		for (Future<?> future : futureList) {
			try {
				future.get();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

}
