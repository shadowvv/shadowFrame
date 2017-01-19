package com.test.net.mina;

import java.nio.ByteBuffer;

public class MinaBuffer {

	public static void main(String[] args) {
		ByteBuffer buffer = ByteBuffer.allocate(10);
		for (int i = 0; i < 5; i++) {
			char c = (char) ('a'+i);
			buffer.putChar(c);
		}
		buffer.flip();
		System.out.println(buffer.getChar());
		
		ByteBuffer bufferD = buffer.duplicate();
		System.out.println(bufferD.getChar());
		
		System.out.println(buffer.getChar());
		
		bufferD.putChar(0, 'z');
		bufferD.flip();
		System.out.println(bufferD.getChar());
		
		buffer.flip();
		System.out.println(buffer.getChar());
	}
	
}
