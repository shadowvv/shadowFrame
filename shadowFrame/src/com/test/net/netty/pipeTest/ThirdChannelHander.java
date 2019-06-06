package com.test.net.netty.pipeTest;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.util.CharsetUtil;

public class ThirdChannelHander extends SimpleChannelInboundHandler<ByteBuf>{

//	@Override
//	public void handlerAdded(ChannelHandlerContext ctx) throws Exception {
//		System.out.println("third handlerAdded");
//		super.handlerAdded(ctx);
//	}
//
//	@Override
//	public void handlerRemoved(ChannelHandlerContext ctx) throws Exception {
//		System.out.println("third handlerRemoved");
//		super.handlerRemoved(ctx);
//	}
//
//	@Override
//	public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
//		System.out.println("third exceptionCaught");
//		super.exceptionCaught(ctx, cause);
//	}

//	@Override
//	public void bind(ChannelHandlerContext ctx, SocketAddress localAddress, ChannelPromise promise) throws Exception {
//		System.out.println("third bind");
//	}
//
//	@Override
//	public void connect(ChannelHandlerContext ctx, SocketAddress remoteAddress, SocketAddress localAddress,
//			ChannelPromise promise) throws Exception {
//		System.out.println("third connect");
//		ctx.writeAndFlush(Unpooled.copiedBuffer("netty rocks!", CharsetUtil.UTF_8));
//	}
//
//	@Override
//	public void disconnect(ChannelHandlerContext ctx, ChannelPromise promise) throws Exception {
//		System.out.println("third disconnect");
//	}
//
//	@Override
//	public void close(ChannelHandlerContext ctx, ChannelPromise promise) throws Exception {
//		System.out.println("third close");
//	}
//
//	@Override
//	public void deregister(ChannelHandlerContext ctx, ChannelPromise promise) throws Exception {
//		System.out.println("third deregister");
//	}
//
//	@Override
//	public void read(ChannelHandlerContext ctx) throws Exception {
//		System.out.println("third read");
//	}
//
//	@Override
//	public void write(ChannelHandlerContext ctx, Object msg, ChannelPromise promise) throws Exception {
//		System.out.println("third write");
//	}
//
//	@Override
//	public void flush(ChannelHandlerContext ctx) throws Exception {
//		System.out.println("third flush");
//	}
	
	@Override
	public void channelActive(ChannelHandlerContext ctx) throws Exception {
		System.out.println("third channelActive");
		ctx.writeAndFlush(Unpooled.copiedBuffer("netty rocks!", CharsetUtil.UTF_8));
	}

	@Override
	protected void channelRead0(ChannelHandlerContext ctx, ByteBuf msg) throws Exception {
		System.out.println("third channelRead0");
		System.out.println("client received:"+msg.toString(CharsetUtil.UTF_8));
	}
	
	@Override
		public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
			// TODO Auto-generated method stub
			super.exceptionCaught(ctx, cause);
		}

}
