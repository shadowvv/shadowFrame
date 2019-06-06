package com.test.net.netty.pipeTest;

import java.net.InetSocketAddress;

import io.netty.bootstrap.Bootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelOption;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioServerSocketChannel;
import io.netty.handler.logging.LogLevel;
import io.netty.handler.logging.LoggingHandler;

public class NettyEchoClient {
	public static final String ip = System.getProperty("host", "127.0.0.1");  
    static final int port = Integer.parseInt(System.getProperty("port", "10020"));  
	
	public static void main(String[] args) {
		NioEventLoopGroup loopGroup = new NioEventLoopGroup();
		Bootstrap bootstrap = new Bootstrap();
		bootstrap.group(loopGroup).option(ChannelOption.SO_KEEPALIVE, true).channel(NioServerSocketChannel.class)
				.handler(new ChannelInitializer<SocketChannel>() {
					@Override
					protected void initChannel(SocketChannel ch) throws Exception {
						ch.pipeline().addLast(new LoggingHandler(LogLevel.INFO), new ThirdChannelHander());
					}
				});
		try {
			InetSocketAddress inetSocketAddress = new InetSocketAddress(ip,port);  
			final ChannelFuture f = bootstrap.connect(inetSocketAddress).sync();
			f.channel().closeFuture().sync();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			loopGroup.shutdownGracefully();  
		}
	}
}