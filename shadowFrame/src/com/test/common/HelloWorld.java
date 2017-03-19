package com.test.common;

import java.util.Scanner;

public class HelloWorld {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		if(sc.hasNext()){
			System.out.println(sc.nextLine());
		}
		sc.close();
		
		System.out.println("hello world!");
	
	}

}
