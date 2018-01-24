package com.shadowFrame.io.udp.netty;

import io.netty.bootstrap.Bootstrap;
import io.netty.buffer.Unpooled;
import io.netty.channel.Channel;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelOption;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.SimpleChannelInboundHandler;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.DatagramPacket;
import io.netty.channel.socket.nio.NioDatagramChannel;
import io.netty.util.CharsetUtil;

import java.net.InetSocketAddress;

public class NettyUpdClient {

    public static final int MessageReceived = 0x99;
    private int scanPort;

    public NettyUpdClient(int scanPort) {
        this.scanPort = scanPort;
    }

    private static class ClientHandler extends SimpleChannelInboundHandler<DatagramPacket> {

        @Override
        protected void channelRead0(ChannelHandlerContext ctx, DatagramPacket msg) throws Exception {
            String response = msg.content().toString(CharsetUtil.UTF_8);

            if(response.startsWith("结果：")){
                System.out.println(response);
                ctx.close();
            }
        }
    }

    public void sendPackage() {
        EventLoopGroup group = new NioEventLoopGroup();
        try {
            Bootstrap b = new Bootstrap();
            b.group(group)
                    .channel(NioDatagramChannel.class)
                    .option(ChannelOption.SO_BROADCAST, true)
                    .handler(new ClientHandler());

            Channel ch = b.bind(0).sync().channel();

            ch.writeAndFlush(new DatagramPacket(
                    Unpooled.copiedBuffer("hello!!!", CharsetUtil.UTF_8),
                    new InetSocketAddress("255.255.255.255", scanPort))).sync();

            System.out.println("Search, sendPackage()");
            // QuoteOfTheMomentClientHandler will close the DatagramChannel when a
            // response is received.  If the channel is not closed within 5 seconds,
            // print an error message and quit.
            // 等待15秒钟
            if (!ch.closeFuture().await(15000)) {
                System.out.println("Search request timed out.");
            }
        }catch (Exception e){
            e.printStackTrace();
            System.out.println("Search, An Error Occur ==>" + e);
        }finally {
            group.shutdownGracefully();
        }
    }
    
    public static void main(String[] args) {
    	NettyUpdClient client = new NettyUpdClient(8800);
        client.sendPackage();
	}

}
