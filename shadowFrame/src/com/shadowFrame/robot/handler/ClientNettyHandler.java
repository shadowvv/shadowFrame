package com.shadowFrame.robot.handler;

import com.shadowFrame.io.net.ClientNettyNet;
import com.shadowFrame.io.net.IClientNet;
import com.shadowFrame.io.net.IMessageHandler;
import com.shadowFrame.io.net.coder.IMessageCoder;
import com.shadowFrame.io.net.coder.StringMessageCoder;

import io.netty.bootstrap.Bootstrap;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.channel.ChannelFuture;
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandlerAdapter;
import io.netty.channel.ChannelInitializer;
import io.netty.channel.ChannelOption;
import io.netty.channel.EventLoopGroup;
import io.netty.channel.nio.NioEventLoopGroup;
import io.netty.channel.socket.SocketChannel;
import io.netty.handler.logging.LogLevel;
import io.netty.handler.logging.LoggingHandler;

/**
 * netty消息处理器
 * @author shadow
 *
 */
public class ClientNettyHandler implements IMessageHandler<String>{
	
	static class ChannelHandler extends ChannelInboundHandlerAdapter  {

		@Override
		public void channelActive(ChannelHandlerContext ctx) throws Exception {

		}

		@Override
		public void channelRead(ChannelHandlerContext ctx, Object msg) throws Exception {
	        ByteBuf buf = (ByteBuf)msg;
	        buf.markReaderIndex();
	        if(buf.isReadable(4)) {
	        	int length = buf.readInt();
	        	if(buf.isReadable(length)) {
	        		byte[] req = new byte[length];
	        		buf.readBytes(req);
	        		System.out.println(new StringMessageCoder().decode(req));
	        		buf.resetReaderIndex();
	        		ctx.write(buf);
	        	}
	        }
		}

		@Override
		public void channelReadComplete(ChannelHandlerContext ctx) throws Exception {
			ctx.flush();
		}

		@Override
		public void exceptionCaught(ChannelHandlerContext ctx, Throwable cause) throws Exception {
			cause.printStackTrace();
		}
	}

	public static Bootstrap BOOTSTRAP;
	private static EventLoopGroup loopGroup;
	static {
		loopGroup = new NioEventLoopGroup();
		BOOTSTRAP = new Bootstrap();
		BOOTSTRAP.group(loopGroup).channel(ClientNettyNet.class).option(ChannelOption.TCP_NODELAY, true).handler(new ChannelInitializer<SocketChannel>() {
			@Override
			protected void initChannel(SocketChannel ch) throws Exception {
				ch.pipeline().addLast(new LoggingHandler(LogLevel.INFO), new ChannelHandler());
			}
		});
	}
	
	private ClientNettyNet net;
	private IMessageCoder<String> coder;
	private long receiveTimeStamp;
	
	public ClientNettyHandler(final IMessageCoder<String> coder) {
		this.coder = coder;
	}
	
	@Override
	public void connect(String ip, int port) {
		final ChannelFuture f = BOOTSTRAP.connect(ip, port);
		net = (ClientNettyNet) f.channel();
	}

	@Override
	public boolean isActive() {
		return net.isActive();
	}

	@Override
	public void send(String message) {
		byte[] messageByte = coder.encode(message);
		ByteBuf buffer = Unpooled.buffer(4+messageByte.length);
		buffer.writeInt(messageByte.length);
		buffer.writeBytes(messageByte, 0, messageByte.length);
		net.writeAndFlush(buffer);
	}

	@Override
	public MessageHandlerResult call() {
		return null;
	}

	@Override
	public void setNet(IClientNet net) {
		if(net instanceof ClientNettyNet) {
			this.net = (ClientNettyNet) net;			
		}
	}

	@Override
	public void setCoder(IMessageCoder<String> coder) {
		this.coder = coder;
	}

	@Override
	public long getReceiveTimeStamp() {
		return receiveTimeStamp;
	}

}
