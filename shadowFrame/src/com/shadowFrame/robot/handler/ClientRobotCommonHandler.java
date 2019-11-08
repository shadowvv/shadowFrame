package com.shadowFrame.robot.handler;

import java.nio.ByteBuffer;
import java.util.concurrent.LinkedBlockingQueue;

import com.shadowFrame.io.net.IClientNet;
import com.shadowFrame.io.net.IMessageHandler;
import com.shadowFrame.io.net.coder.IMessageCoder;

/**
 * 机器人一般消息接受处理
 * 
 * @author shadow
 *
 */
public class ClientRobotCommonHandler implements IMessageHandler<String> {

	//网络
	private IClientNet net;
	//消息编解码器
	private IMessageCoder<String> coder;
	//上次接收到协议时间戳
	private long receiveTimeStamp;
	// 机器人消息列表
	private LinkedBlockingQueue<String> messageList;

	public ClientRobotCommonHandler(final IClientNet net,final IMessageCoder<String> coder) {
		this.net = net;
		this.coder = coder;
		messageList = new LinkedBlockingQueue<String>();
	}
	
	@Override
	public void connect(String ip, int port) {
		net.connect(ip, port);
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
	public ReceiveMessageHandlerResult call() {
		while (true) {
			byte[] lengthByte = net.receive(4);
			int length = ByteBuffer.wrap(lengthByte).getInt();
			String message = coder.decode(net.receive(length));
			messageList.add(message);
			System.out.println(message);
		}
	}

	@Override
	public long getReceiveTimeStamp() {
		return receiveTimeStamp;
	}
	
	@Override
	public void setNet(IClientNet net) {
		this.net = net;
	}
	
	@Override
	public void setCoder(IMessageCoder<String> coder) {
		this.coder = coder;
	}

}