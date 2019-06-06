package com.test.net.netty.pipeTest;

import java.net.InetSocketAddress;

import io.netty.bootstrap.ServerBootstrap;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.channel.socket.nio.NioServerSocketChannel;

public class NettyEchoServer1 {
    private final int port;

    public NettyEchoServer1(int port) {
        this.port = port;
    }

    public void start() throws Exception{
        EventLoopGroup group = new NioEventLoopGroup();
        try {
            ServerBootstrap b = new ServerBootstrap();                  //#1
            b.group(group)                                              //#2
                    .channel(NioServerSocketChannel.class)              //#2
                    .localAddress(new InetSocketAddress(port))          //#2
                    .childHandler(new ChannelInitializer<SocketChannel>() { //#3
                        @Override
                        protected void initChannel(SocketChannel ch) throws Exception {
                            ch.pipeline().addLast(new FirstChannelHandler());                  //#4
                        }
                    });

            ChannelFuture f = b.bind().sync();              //#5
            System.out.println(NettyEchoServer1.class.getSimpleName() + " started and listener on " + f.channel().localAddress());
            f.channel().closeFuture().sync();               //#6
        } finally {
            group.shutdownGracefully().sync();              //#7
        }

    }


    public static void main(String[] args) throws Exception {
        new NettyEchoServer1(8989).start();
    }

}
