package com.test;

public class WaitTest {

	public static void main(String[] args) throws Exception {

		Object lock = new Object();

		Thread t = new Thread(new Runnable() {
			@Override
			public void run() {
				try {
					Thread.currentThread().sleep(3000);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				synchronized (lock) {
					lock.notify();
				}
			}
		});
		t.setName("T_thread");

		Thread tt = new Thread(new Runnable() {
			@Override
			public void run() {
				synchronized (lock) {
					try {
						lock.wait();
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
					System.out.println("hello");
				}
			}
		});
		tt.setName("TT_thread");

		t.start();
		tt.start();
	}

}
