package com.test.net.netty.pipeTest;

import java.net.SocketAddress;

import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelOutboundHandler;
import io.netty.channel.ChannelPromise;

public class ThirdChannelHander implements ChannelOutboundHandler{

	@Override
	public void handlerAdded(ChannelHandlerContext ctx) throws Exception {
		System.out.println("third handlerAdded");
	}

	@Override
	public void handlerRemoved(ChannelHandlerContext ctx) throws Exception {
		System.out.println("third handlerRemoved");
	}

	@Override
	public void bind(ChannelHandlerContext ctx, SocketAddress localAddress, ChannelPromise promise) throws Exception {
		System.out.println("third bind");
		ctx.bind(localAddress, promise);
	}

	@Override
	public void connect(ChannelHandlerContext ctx, SocketAddress remoteAddress, SocketAddress localAddress,
			ChannelPromise promise) throws Exception {
		System.out.println("third connect");
		ctx.connect(remoteAddress, localAddress, promise);	
	}

	@Override
	public void disconnect(ChannelHandlerContext ctx, ChannelPromise promise) throws Exception {
		System.out.println("third disconnect");
		ctx.disconnect(promise);
	}

	@Override
	public void close(ChannelHandlerContext ctx, ChannelPromise promise) throws Exception {
		System.out.println("third close");
		ctx.close(promise);
	}

	@Override
	public void deregister(ChannelHandlerContext ctx, ChannelPromise promise) throws Exception {
		System.out.println("third deregister");
		ctx.deregister(promise);
	}

	@Override
	public void read(ChannelHandlerContext ctx) throws Exception {
		System.out.println("third read");
		ctx.read();
	}

	@Override
	public void write(ChannelHandlerContext ctx, Object msg, ChannelPromise promise) throws Exception {
		System.out.println("third write");
		ctx.write(msg,promise);
	}

	@Override
	public void flush(ChannelHandlerContext ctx) throws Exception {
		System.out.println("third flush");
		ctx.flush();
	}

	@Override
	public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
		System.out.println("third exceptionCaught");
	}

}
