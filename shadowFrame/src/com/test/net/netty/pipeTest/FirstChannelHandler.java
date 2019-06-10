package com.test.net.netty.pipeTest;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelFutureListener;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.util.CharsetUtil;

public class FirstChannelHandler extends ChannelInboundHandlerAdapter {
	
	@Override
	public void handlerAdded(ChannelHandlerContext ctx) throws Exception {
		System.out.println("first handlerAdded");
	}

	@Override
	public void handlerRemoved(ChannelHandlerContext ctx) throws Exception {
		System.out.println("first handlerRemoved");
	}

	@Override
	public void channelActive(ChannelHandlerContext ctx) throws Exception {
		System.out.println("first channelActive");
		ctx.fireChannelActive();
	}

	@Override
	public void channelInactive(ChannelHandlerContext ctx) throws Exception {
		System.out.println("first channelInactive");
		ctx.fireChannelInactive();
	}

	@Override
	public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
		System.out.println("first channelRead");
		ByteBuf in = (ByteBuf) msg;
		System.out.println("server received:" + in.toString(CharsetUtil.UTF_8));
		ctx.channel().write(in);
	}

	@Override
	public void channelReadComplete(ChannelHandlerContext ctx) throws Exception {
		System.out.println("first channelReadComplete");
		ctx.writeAndFlush(Unpooled.EMPTY_BUFFER).addListener(ChannelFutureListener.CLOSE);
		ctx.fireChannelReadComplete();
	}
	
    @Override  
    public void exceptionCaught(final ChannelHandlerContext ctx, final Throwable cause) {  
        cause.printStackTrace();  
        ctx.close();  
    }  

}
