package com.shadowFrame.io.udt.netty.client;  
  
import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.channel.udt.nio.NioUdtProvider;

import java.io.UnsupportedEncodingException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
  
/** 
 * Handler implementation for the echo client. It initiates the ping-pong 
 * traffic between the echo client and server by sending the first message to 
 * the server on activation. 
 * @author donald 
 * 2017年7月1日 
 * 下午4:53:59 
 */  
public class ByteEchoClientHandler extends SimpleChannelInboundHandler<ByteBuf> {  
    private static final Logger log = LoggerFactory.getLogger(ByteEchoClientHandler.class);  
    private final ByteBuf message;  
    public ByteEchoClientHandler() {  
        super(false);  
        String hello = "Hello peer...";  
        message = Unpooled.buffer(ByteEchoClient.SIZE);//堆buffer  
        try {  
            message.writeBytes(hello.getBytes("UTF-8"));  
            message.retainedDuplicate();  
        } catch (UnsupportedEncodingException e) {  
            e.printStackTrace();  
        }  
    }  
  
    @SuppressWarnings("deprecation")  
    @Override  
    public void channelActive(final ChannelHandlerContext ctx) {  
        log.info("ECHO active " +  
         NioUdtProvider.socketUDT(ctx.channel()).toStringOptions());  
        ctx.writeAndFlush(message);  
    }  
  
    @Override  
    public void channelRead0(ChannelHandlerContext ctx, ByteBuf msg) {  
        ByteBuf in = (ByteBuf)msg;  
        byte[] bytes = new byte[in.writerIndex()];  
        in.readBytes(bytes);  
        //针对堆buf，direct buf不支持  
//      byte[] bytes = in.array();  
        String message = null;  
        try {  
            message = new String(bytes,"UTF-8");  
        } catch (UnsupportedEncodingException e) {  
            e.printStackTrace();  
        }  
        log.info("=== reciever ack message from peer:" +message);  
    }  
  
    @Override  
    public void channelReadComplete(ChannelHandlerContext ctx) {  
//      ctx.flush();  
    }  
  
    @Override  
    public void exceptionCaught(final ChannelHandlerContext ctx, final Throwable cause) {  
        cause.printStackTrace();  
        ctx.close();  
    }  
  
}  