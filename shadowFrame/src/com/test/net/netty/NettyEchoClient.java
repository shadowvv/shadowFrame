package com.test.net.netty;

import java.net.InetSocketAddress;

import com.test.net.netty.pipeTest.ClientChannelHandler;

import io.netty.bootstrap.Bootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioSocketChannel;
import io.netty.handler.logging.LogLevel;
import io.netty.handler.logging.LoggingHandler;

public class NettyEchoClient {
	public static final String ip = System.getProperty("host", "127.0.0.1");  
    static final int port = Integer.parseInt(System.getProperty("port", "10020"));  
	
	public static void main(String[] args) {
		EventLoopGroup loopGroup = new NioEventLoopGroup();
		Bootstrap bootstrap = new Bootstrap();
		bootstrap.group(loopGroup).channel(NioSocketChannel.class)
				.handler(new ChannelInitializer<SocketChannel>() {
					@Override
					protected void initChannel(SocketChannel ch) throws Exception {
						ch.pipeline().addLast(new LoggingHandler(LogLevel.INFO), new ClientChannelHandler());
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
