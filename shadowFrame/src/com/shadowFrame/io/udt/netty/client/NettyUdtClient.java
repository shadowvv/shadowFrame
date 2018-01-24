package com.shadowFrame.io.udt.netty.client;

import io.netty.bootstrap.Bootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.udt.UdtChannel;
import io.netty.channel.udt.nio.NioUdtProvider;
import io.netty.handler.logging.LogLevel;
import io.netty.handler.logging.LoggingHandler;
import io.netty.util.concurrent.DefaultThreadFactory;

import java.net.InetSocketAddress;
import java.util.concurrent.ThreadFactory;

public class NettyUdtClient {

    public static final String ip = System.getProperty("host", "192.168.31.153");  
    static final int port = Integer.parseInt(System.getProperty("port", "10020"));  
    public static final int SIZE = Integer.parseInt(System.getProperty("size", "256"));  
  
    @SuppressWarnings("deprecation")  
    public static void main(String[] args) throws Exception {  
        // Configure the client.  
        final ThreadFactory connectFactory = new DefaultThreadFactory("connect");  
        final NioEventLoopGroup connectGroup = new NioEventLoopGroup(1,  
                connectFactory, NioUdtProvider.BYTE_PROVIDER);  
        try {  
            final Bootstrap boot = new Bootstrap();  
            boot.group(connectGroup)  
                    .channelFactory(NioUdtProvider.BYTE_CONNECTOR)  
                    .handler(new ChannelInitializer<UdtChannel>() {  
                        @Override  
                        public void initChannel(final UdtChannel ch)  
                                throws Exception {  
                            ch.pipeline().addLast(  
                                    new LoggingHandler(LogLevel.INFO),  
                                    new ByteEchoClientHandler());  
                        }  
                    });  
            InetSocketAddress inetSocketAddress = new InetSocketAddress(ip,port);  
            // Start the client.  
            final ChannelFuture f = boot.connect(inetSocketAddress).sync();  
            // Wait until the connection is closed.  
            f.channel().closeFuture().sync();  
        } finally {  
            // Shut down the event loop to terminate all threads.  
            connectGroup.shutdownGracefully();  
        }  
    }  
}
