package com.test.common;

import org.apache.mina.core.buffer.IoBuffer;

public class MinaBufferTest {

	public static void main(String[] args) {
		
		IoBuffer buffer = IoBuffer.allocate(10);
		
		System.out.println(buffer);
		
	}
	
}
