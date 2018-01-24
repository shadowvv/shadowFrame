package com.shadowFrame.io.udt.netty.server;  
  
import io.netty.buffer.ByteBuf;
import io.netty.channel.ChannelHandler.Sharable;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.channel.udt.nio.NioUdtProvider;

import java.io.UnsupportedEncodingException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
  
/** 
 *  
 * @author donald 
 * 2017年7月1日 
 * 下午4:53:46 
 */  
@Sharable  
public class ByteEchoServerHandler extends ChannelInboundHandlerAdapter {  
    private static final Logger log = LoggerFactory.getLogger(ByteEchoServerHandler.class);  
  
    @SuppressWarnings("deprecation")  
    @Override  
    public void channelActive(final ChannelHandlerContext ctx) {  
         log.info("ECHO active " + NioUdtProvider.socketUDT(ctx.channel()).toStringOptions());  
    }  
  
    @Override  
    public void channelRead(final ChannelHandlerContext ctx, Object msg) {  
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
        try{  
            log.info("===Server reciever message:" +message);  
        }  
        finally{  
            //如果msg为引用计数对象，在使用后注意释放，一般在通道handler中释放  
//            ReferenceCountUtil.release(msg);  
        }  
        String ackMessage = "hello client ...";  
        in.clear();  
        try {  
            in.writeBytes(ackMessage.getBytes("UTF-8"));  
        } catch (UnsupportedEncodingException e) {  
            e.printStackTrace();  
        }  
        ctx.write(in);  
    }  
  
    @Override  
    public void channelReadComplete(ChannelHandlerContext ctx) {  
        ctx.flush();  
    }  
  
    @Override  
    public void exceptionCaught(final ChannelHandlerContext ctx, final Throwable cause) {  
        cause.printStackTrace();  
        ctx.close();  
    }  
}  