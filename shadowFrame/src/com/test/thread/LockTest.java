package com.test.thread;

import java.util.Vector;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * 偏向锁和轻量级锁测试
 * -XX:-UseBiasedLocking
 * @author shadow
 *
 */
public class LockTest {

	
	public static void main(String[] args) {
		
		
		@SuppressWarnings("unused")
		Runnable task = new Runnable() {
			
			@Override
			public void run() {
				
			}
		};
		
		
		
		final Vector<Integer> vec = new Vector<Integer>();
		
		ExecutorService fixExecutorService = Executors.newFixedThreadPool(5);
		fixExecutorService.submit(new Runnable() {
			
			@Override
			public void run() {
				long time = System.nanoTime();
				for(int i = 0;i<1000000;i++){
					vec.add(i);
				}
				System.out.println(System.nanoTime() - time);
			}
		});
	}
	
}
