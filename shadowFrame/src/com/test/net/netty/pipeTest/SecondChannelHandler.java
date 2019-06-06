package com.test.net.netty.pipeTest;

import io.netty.channel.ChannelHandler;
import io.netty.channel.ChannelHandlerContext;

public class SecondChannelHandler implements ChannelHandler {

	@Override
	public void handlerAdded(ChannelHandlerContext ctx) throws Exception {
		System.out.println("second handlerAdded");
	}

	@Override
	public void handlerRemoved(ChannelHandlerContext ctx) throws Exception {
		System.out.println("second handlerAdded");
	}

	@Override
	public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
		System.out.println("second handlerAdded");
	}

}
