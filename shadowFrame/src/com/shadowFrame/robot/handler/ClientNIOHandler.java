package com.shadowFrame.robot.handler;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;

import com.shadowFrame.io.net.ClientNIONet;
import com.shadowFrame.io.net.IClientNet;
import com.shadowFrame.io.net.INetHandler;
import com.shadowFrame.io.net.coder.IMessageCoder;

/**
 * NIO消息处理器
 * @author shadow
 *
 */
public class ClientNIOHandler implements INetHandler<String>{
	
	private static Selector selector;
	private static IMessageCoder<String> coder;
	private static Callable<MessageHandlerResult> listenCall;
	private static Map<SocketChannel, ClientNIONet> ChannelNetMap;
	static {
		try {
			selector = Selector.open();
			ChannelNetMap = new ConcurrentHashMap<SocketChannel, ClientNIONet>();
			listenCall = new Callable<MessageHandlerResult>() {
				@Override
				public MessageHandlerResult call() throws Exception {
					while (true) {
						try {
							selector.select();
							Iterator<SelectionKey> it = selector.selectedKeys().iterator();
							while (it.hasNext()) {
								SelectionKey selectionKey = (SelectionKey) it.next();
								SocketChannel channel = (SocketChannel) selectionKey.channel();
								it.remove();
								if(selectionKey.isConnectable()) {
									if(channel.isConnectionPending()) {
										channel.finishConnect();
									}
									channel.register(selector, SelectionKey.OP_READ);
								}else if (selectionKey.isReadable()){
									ClientNIONet currentNet = ChannelNetMap.get(channel);
									if(currentNet != null) {
										byte[] lengthByte = currentNet.receive(4);
										int length = ByteBuffer.wrap(lengthByte).getInt();
										String message = coder.decode(currentNet.receive(length));
										System.out.println(message);													
									}
								}
							}
						} catch (IOException e) {
							e.printStackTrace();
						}
					}
				}
			};
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private ClientNIONet net;
	
	private long receiveTimeStamp;
	
	public ClientNIOHandler(final IMessageCoder<String> coder) {
		this.net = new ClientNIONet();
		ClientNIOHandler.coder = coder;
	}
	
	@Override
	public void connect(String ip, int port) {
		net.connect(ip, port);
		net.register(selector,SelectionKey.OP_CONNECT);
		ChannelNetMap.put(net.getChannel(), net);
	}

	@Override
	public boolean isActive() {
		return net.isActive();
	}

	@Override
	public void send(String message) {
		byte[] messageByte = coder.encode(message);
		byte[] messageLengthByte = ByteBuffer.allocate(4).putInt(message.length()).array();
		net.send(messageLengthByte);
		net.send(messageByte);
	}

	@Override
	public MessageHandlerResult call() {
		try {
			return listenCall.call();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void setNet(IClientNet net) {
		if(net instanceof ClientNIONet) {
			this.net = (ClientNIONet) net;
		}
	}

	@Override
	public void setCoder(IMessageCoder<String> coder) {
		ClientNIOHandler.coder = coder;
	}

	@Override
	public long getReceiveTimeStamp() {
		return receiveTimeStamp;
	}

}
