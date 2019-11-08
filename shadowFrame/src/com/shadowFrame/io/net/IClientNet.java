package com.shadowFrame.io.net;

/**
 * 客户端网络实现接口
 * @author shadow
 *
 */
public interface IClientNet {

	/**
	 * 连接服务器
	 * @param ip
	 * @param port
	 */
	void connect(final String ip, final int port);

	/**
	 * 发送数据
	 * @param message
	 */
	void send(final byte[] message);
	
	/**
	 * 接收消息
	 * @param length 消息长度
	 * @return
	 */
	byte[] receive(final int length);

	/**
	 * 是否在连线状态
	 * @return
	 */
	boolean isActive();
}
