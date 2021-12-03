package com.test.net.netty;

import com.shadowFrame.io.net.coder.IMessageCoder;
import com.shadowFrame.io.net.coder.StringMessageCoder;
import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;

/**
 * nettyEchoServer handler
 *
 * @author shadow
 */
public class ServerChannelHandler extends ChannelInboundHandlerAdapter {

    private static IMessageCoder<String> coder = new StringMessageCoder();

    @Override
    public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
        ByteBuf buf = (ByteBuf) msg;
        buf.markReaderIndex();
        if (buf.isReadable(4)) {
            int length = buf.readInt();
            if (buf.isReadable(length)) {
                byte[] req = new byte[length];
                buf.readBytes(req);
                System.out.println("服务器收到信息：" + coder.decode(req));
                buf.resetReaderIndex();
                ctx.write(buf);
            }
        }
    }

    @Override
    public void channelReadComplete(ChannelHandlerContext ctx) throws Exception {
        ctx.flush();
    }

    @Override
    public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
        cause.printStackTrace();
    }
}
