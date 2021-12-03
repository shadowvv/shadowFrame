package com.shadowFrame.io.net.coder;

import com.shadowFrame.util.StringUtil;

/**
 * String类型消息编解码器
 *
 * @author shadow
 */
public class StringMessageCoder implements IMessageCoder<String> {

    @Override
    public byte[] encode(String message) {
        if (StringUtil.isNullOrEmpty(message)) {
            return null;
        }
        byte[] block = message.getBytes();
        return block;
    }

    @Override
    public String decode(byte[] data) {
        if (data == null || data.length == 0) {
            return null;
        }
        return new String(data);
    }

}
