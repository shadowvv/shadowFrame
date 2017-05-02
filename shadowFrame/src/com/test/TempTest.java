package com.test;

public class TempTest {

	public static void main(String[] args) {
		
		byte[] digits = { '0', '1', '2', '3', '4', '5', '6', '7', '8','9', 'A', 'B', 'C', 'D', 'E', 'F' };

		
		byte[] high = new byte[256];
		byte[] low = new byte[256];

		for (int i = 0; i < 256; i++) {
			high[i] = digits[i >>> 4];
			low[i] = digits[i & 0x0F];
		}
		
		
	}

}
