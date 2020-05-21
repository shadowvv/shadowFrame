package com.shadowFrame.io.net;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;

/**
 * NIO 客户端连接
 * @author shadow
 *
 */
public class ClientNIONet implements IClientNet{

	private SocketChannel channel;
	
	public ClientNIONet() {

	}
	
	@Override
	public void connect(String ip, int port) {
		try {
			channel = SocketChannel.open();
			channel.configureBlocking(false);
			channel.connect(new InetSocketAddress(ip, port));
		} catch (IOException e) {
			e.printStackTrace();
		}	
	}
	
	/**
	 * 注册到selector
	 * @param selector
	 * @param opConnect
	 */
	public void register(Selector selector, int opConnect) {
		try {
			channel.register(selector, SelectionKey.OP_CONNECT);
		} catch (ClosedChannelException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void send(byte[] message) {
		try {
			channel.write(ByteBuffer.wrap(message));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public byte[] receive(int length) {
		try {
			ByteBuffer buffer = ByteBuffer.allocate(length);
			channel.read(buffer);
			return buffer.array();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public boolean isActive() {
		return channel.isConnected();
	}

	/**
	 * 获得nio channel
	 * @return
	 */
	public SocketChannel getChannel() {
		return channel;
	}
}
