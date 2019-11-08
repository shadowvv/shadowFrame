package com.test.thread;

/**
 * object的notify和wait测试
 * @author shadow
 *
 */
public class WaitTest {

	public static void main(String[] args) throws Exception {

		final Object lock = new Object();

		Thread t = new Thread(new Runnable() {
			@SuppressWarnings("static-access")
			@Override
			public void run() {
				try {
					System.out.println(Thread.currentThread().getName()+":wait 3s!");
					Thread.currentThread().sleep(3000);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}
				synchronized (lock) {
					lock.notify();
					lock.notifyAll();
				}
			}
		});
		t.setName("notify_thread");

		Thread tt = new Thread(new Runnable() {
			@Override
			public void run() {
				synchronized (lock) {
					try {
						lock.wait();
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
					System.out.println(Thread.currentThread().getName()+":hello");
				}
			}
		});
		tt.setName("waitHello_thread");
		Thread ttt= new Thread(new Runnable() {
			@Override
			public void run() {
				synchronized (lock) {
					try {
						lock.wait();
					} catch (InterruptedException e) {
						e.printStackTrace();
					}
					System.out.println(Thread.currentThread().getName()+":world");
				}
			}
		});
		ttt.setName("waitWorld_thread");

		t.start();
		tt.start();
		ttt.start();
	}

}
