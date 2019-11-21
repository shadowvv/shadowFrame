package com.shadowFrame.io.net;

import java.net.InetSocketAddress;

import io.netty.channel.socket.nio.NioSocketChannel;

public class ClientNettyNet extends NioSocketChannel implements IClientNet {
	
	public ClientNettyNet() {

	}
	
	@Override
	public void connect(String ip, int port) {
		connect(new InetSocketAddress(ip, port));
	}

	@Override
	public void send(byte[] message) {
		writeAndFlush(message);
	}

	@Override
	public byte[] receive(int length) {
		return null;
	}

}