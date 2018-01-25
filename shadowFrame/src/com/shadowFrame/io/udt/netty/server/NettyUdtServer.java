package com.shadowFrame.io.udt.netty.server;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelOption;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.udt.UdtChannel;
import io.netty.channel.udt.nio.NioUdtProvider;
import io.netty.handler.logging.LogLevel;
import io.netty.handler.logging.LoggingHandler;
import io.netty.util.concurrent.DefaultThreadFactory;

import java.net.InetSocketAddress;
import java.util.concurrent.ThreadFactory;

public class NettyUdtServer {
	
    public static final String ip = System.getProperty("host", "127.0.0.1");  
    static final int port = Integer.parseInt(System.getProperty("port", "10020"));  
    @SuppressWarnings("deprecation")  
    public static void main(String[] args) throws Exception {  
        final ThreadFactory acceptFactory = new DefaultThreadFactory("accept");  
        final ThreadFactory connectFactory = new DefaultThreadFactory("connect");  
        final NioEventLoopGroup acceptGroup = new NioEventLoopGroup(1, acceptFactory, NioUdtProvider.BYTE_PROVIDER);  
        final NioEventLoopGroup connectGroup = new NioEventLoopGroup(1, connectFactory, NioUdtProvider.BYTE_PROVIDER);  
  
        // Configure the server.  
        try {  
            final ServerBootstrap boot = new ServerBootstrap();  
            boot.group(acceptGroup, connectGroup)  
                    .channelFactory(NioUdtProvider.BYTE_ACCEPTOR)  
                    .option(ChannelOption.SO_BACKLOG, 10)  
                    .handler(new LoggingHandler(LogLevel.INFO))  
                    .childHandler(new ChannelInitializer<UdtChannel>() {  
                        @Override  
                        public void initChannel(final UdtChannel ch)  
                                throws Exception {  
                            ch.pipeline().addLast(  
                                    new LoggingHandler(LogLevel.INFO),  
                                    new ByteEchoServerHandler());  
                        }  
                    });  
            InetSocketAddress inetSocketAddress = new InetSocketAddress(ip,port);  
            // Start the server.  
            final ChannelFuture future = boot.bind(inetSocketAddress).sync();  
            // Wait until the server socket is closed.  
            future.channel().closeFuture().sync();  
        } finally {  
            // Shut down all event loops to terminate all threads.  
            acceptGroup.shutdownGracefully();  
            connectGroup.shutdownGracefully();  
        }  
    }  
	
}
