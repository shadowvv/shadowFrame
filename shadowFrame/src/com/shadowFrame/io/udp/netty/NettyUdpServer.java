package com.shadowFrame.io.udp.netty;

import io.netty.bootstrap.Bootstrap;
import io.netty.buffer.Unpooled;
import io.netty.channel.*;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.DatagramPacket;
import io.netty.channel.socket.nio.NioDatagramChannel;
import io.netty.util.CharsetUtil;

public class NettyUdpServer {

    /**
     * udp服务端，接受客户端发送的广播
     */
    public static void initServer() {
        EventLoopGroup group = new NioEventLoopGroup();
        try {
            Bootstrap bootstrap = new Bootstrap();
            bootstrap.group(group)
                    .channel(NioDatagramChannel.class)
                    .option(ChannelOption.SO_BROADCAST, true)
                    .handler(new UdpServerHandler());
            Channel channel = bootstrap.bind(8800).sync().channel();
            channel.closeFuture().await();
        } catch (InterruptedException e) {
            e.printStackTrace();
        } finally {
            group.shutdownGracefully();
        }
    }

    private static class UdpServerHandler extends SimpleChannelInboundHandler<DatagramPacket> {
        @Override
        protected void channelRead0(ChannelHandlerContext ctx, DatagramPacket msg) throws Exception {
            // 因为Netty对UDP进行了封装，所以接收到的是DatagramPacket对象。
            String req = msg.content().toString(CharsetUtil.UTF_8);
            System.out.println(req);

            if ("hello!!!".equals(req)) {
                ctx.writeAndFlush(new DatagramPacket(Unpooled.copiedBuffer(
                        "结果：", CharsetUtil.UTF_8), msg.sender()));
            }
        }
    }

}
