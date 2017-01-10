  package com.test.net.original;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.InetAddress;
import java.net.Socket;

public class OriginalSocketClient {
	
	Socket local;
	
	public void run() throws Exception{
		InetAddress addr = InetAddress.getLocalHost();
		local = new Socket(addr, 6001);
		
		OutputStreamWriter writer = new OutputStreamWriter(local.getOutputStream());
		writer.write("hello server!");
		writer.flush();
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(local.getInputStream()));
		String line = reader.readLine();
		System.out.println("server:"+line);
		
		local.close();
	}
	
	public static void main(String[] args) throws Exception {
		new OriginalSocketClient().run();
	}
}
