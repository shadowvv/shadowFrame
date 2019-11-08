package com.test.common;

import java.nio.CharBuffer;

public class NIOBufferTest {

	public NIOBufferTest() {

	}
	
	public static void main(String[] args) {
		CharBuffer buffer = CharBuffer.allocate(100);
		buffer.put('1');
		buffer.put('2');
		char test1 = buffer.get();
		System.out.println(test1);
		buffer.put('3');
		buffer.flip();
		System.out.println(buffer.toString());
		buffer.rewind();
		System.out.println(buffer.toString());
		buffer.put('5');
		buffer.rewind();
		System.out.println(buffer.toString());
	}
	
}
