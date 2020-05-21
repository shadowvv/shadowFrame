package com.shadowFrame.io.net;

import java.util.concurrent.Callable;

import com.shadowFrame.io.net.coder.IMessageCoder;
import com.shadowFrame.robot.handler.MessageHandlerResult;

/**
 * 协议处理器
 * @author shadow
 *
 * @param <协议类型>
 */
public interface INetHandler<T> extends Callable<MessageHandlerResult> {

	/**
	 * 连接服务器
	 * @param ip
	 * @param port
	 */
	public void connect(String ip, int port);

	/**
	 * 连接是否有效
	 * @return
	 */
	public boolean isActive();
	
	/**
	 * 发送协议
	 * @param message
	 */
	public void send(T message);
	
	/**
	 * 接收协议
	 */
	MessageHandlerResult call();
	
	/**
	 * 设置网络
	 * @param net
	 */
	public void setNet(IClientNet net);
	
	/**
	 * 设置编解码器
	 * @param coder
	 */
	public void setCoder(IMessageCoder<T> coder);
	
	/**
	 * 上次接收协议时间戳
	 * @return
	 */
	long getReceiveTimeStamp();
}
