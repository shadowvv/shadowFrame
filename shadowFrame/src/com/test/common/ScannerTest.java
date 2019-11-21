package com.test.common;

import java.util.Scanner;

/**
 * scanner简单应用
 * @author shadow
 *
 */
public class ScannerTest {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		if(sc.hasNext()){
			System.out.println(sc.nextLine());
		}
		sc.close();
		
		System.out.println("hello world!");
	
	}

}
