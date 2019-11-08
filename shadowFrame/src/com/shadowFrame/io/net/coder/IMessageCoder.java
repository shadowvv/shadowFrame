package com.shadowFrame.io.net.coder;

/**
 * 消息编解码器
 * @author shadow
 *
 * @param <编码格式>
 */
public interface IMessageCoder<T> {

	/**
	 * 编码
	 * @param message
	 * @return
	 */
	byte[] encode(T message);
	
	/**
	 * 解码
	 * @param data
	 * @return
	 */
	T decode(byte[] data);

}
