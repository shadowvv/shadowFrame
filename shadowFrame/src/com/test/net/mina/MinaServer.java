package com.test.net.mina;

import java.net.InetSocketAddress;
import java.nio.charset.Charset;

import org.apache.mina.core.service.IoHandlerAdapter;
import org.apache.mina.core.session.IoSession;
import org.apache.mina.filter.codec.ProtocolCodecFilter;
import org.apache.mina.filter.codec.textline.TextLineCodecFactory;
import org.apache.mina.transport.socket.nio.NioSocketAcceptor;

public class MinaServer {

	public static void main(String[] args) throws Exception {
		new MinaServer().run();
	}

	public void run() throws Exception {
		NioSocketAcceptor acceptor = new NioSocketAcceptor();
		acceptor.getFilterChain().addLast(
				"codec",
				new ProtocolCodecFilter(new TextLineCodecFactory(Charset
						.forName("UTF-8"))));

		acceptor.setHandler(new ReverseHandler());
		acceptor.bind(new InetSocketAddress(6001));

		System.out.println("server Start");
	}

	class ReverseHandler extends IoHandlerAdapter {
		
		@Override
		public void sessionCreated(IoSession session) throws Exception {
			System.out.println("create");
			super.sessionCreated(session);
		}
		
		@Override
		public void sessionOpened(IoSession session) throws Exception {
			System.out.println("open");
			super.sessionOpened(session);
		}
		
		@Override
		public void messageReceived(IoSession session, Object message)
				throws Exception {
			String str = message.toString();
			System.out.println("client:"+str);
			session.write("hello client");
		}
	}
}
