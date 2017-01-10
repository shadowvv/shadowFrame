package com.test.net.original;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.ServerSocket;
import java.net.Socket;

public class OriginalSocketServer {

	ServerSocket server;
	
	public void run() throws Exception{
		server = new ServerSocket(6001);
		System.out.println("server Run!");
		while (true) {
			Socket client = server.accept();
			BufferedReader reader = new BufferedReader(new InputStreamReader(client.getInputStream()));
			int line = reader.read();
			System.out.println("client:"+line);
			
			
			OutputStreamWriter writer = new OutputStreamWriter(client.getOutputStream());
			writer.write("hello client!");
			writer.flush();
			
			writer.close();
			reader.close();
			client.close();
		}
	}
	
	public static void main(String[] args) throws Exception {
		new OriginalSocketServer().run();
	}
	
}
