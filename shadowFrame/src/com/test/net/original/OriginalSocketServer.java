package com.test.net.original;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * 简单的原生socket服务器
 * 
 * @author shadow
 *
 */
public class OriginalSocketServer {

	private ServerSocket server;
	private ExecutorService executor;

	public void run() throws Exception {
		server = new ServerSocket(999);
		executor = Executors.newCachedThreadPool();
		System.out.println("server Run!");
		while (true) {
			Socket client = server.accept();
			executor.submit(new ClientHandler(client));
		}
	}
	
	class ClientHandler implements Callable<Integer>{
		
		Socket client;
		
		public ClientHandler(Socket client){
			this.client = client;
		}

		@Override
		public Integer call() throws Exception {
			while (true) {
				int length = 0;
				byte[] lengthByte = new byte[4];
				try {
					InputStream in = client.getInputStream();
					if (in.read(lengthByte) == 4) {
						ByteBuffer buffer = ByteBuffer.wrap(lengthByte);
						length = buffer.getInt();
					}
					byte[] messageByte = new byte[length];
					if (in.read(messageByte) == length) {
						String message = new String(messageByte);
						System.out.println(message);
						ByteArrayOutputStream writer = new ByteArrayOutputStream(messageByte.length);
						writer.write(lengthByte);
						writer.write(messageByte);
						writer.writeTo(client.getOutputStream());
						writer.flush();
					}
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		
	};

	public static void main(String[] args) throws Exception {
		new OriginalSocketServer().run();
	}

}
