package com.test.net.netty.pipeTest;

import java.net.InetSocketAddress;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioServerSocketChannel;
import io.netty.handler.logging.LogLevel;
import io.netty.handler.logging.LoggingHandler;

public class NettyEchoServer {
	
    public static final String ip = System.getProperty("host", "127.0.0.1");  
    static final int port = Integer.parseInt(System.getProperty("port", "10020"));  

	public static void main(String[] args) {
		NioEventLoopGroup bossGroup = new NioEventLoopGroup(1);
		NioEventLoopGroup loopGroup = new NioEventLoopGroup(1);
		ServerBootstrap bootstrap = new ServerBootstrap();
		bootstrap.group(bossGroup, loopGroup).channel(NioServerSocketChannel.class)
				.handler(new LoggingHandler(LogLevel.INFO))
//				.childHandler(new FirstChannelHandler()).childHandler(new SecondChannelHandler());
				.childHandler(new ChannelInitializer<SocketChannel>() {
					@Override
					protected void initChannel(SocketChannel ch) throws Exception {
						ch.pipeline().addLast(new FirstChannelHandler());
						ch.pipeline().addLast(new SecondChannelHandler());
						ch.pipeline().addLast(new ThirdChannelHander());
					}
				});
		try {
			 InetSocketAddress inetSocketAddress = new InetSocketAddress(ip,port);
			final ChannelFuture f = bootstrap.bind(inetSocketAddress).sync();
			f.channel().closeFuture().sync();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}finally {
			bossGroup.shutdownGracefully();  
			loopGroup.shutdownGracefully();  
		}
	}

}
