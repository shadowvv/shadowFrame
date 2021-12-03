package com.test.net.mina;

import org.apache.mina.core.future.ConnectFuture;
import org.apache.mina.core.service.IoHandlerAdapter;
import org.apache.mina.core.session.IoSession;
import org.apache.mina.filter.codec.ProtocolCodecFilter;
import org.apache.mina.filter.codec.textline.TextLineCodecFactory;
import org.apache.mina.transport.socket.nio.NioSocketConnector;

import java.net.InetSocketAddress;
import java.nio.charset.Charset;

public class MinaClient {

    public void run() {
        NioSocketConnector con = new NioSocketConnector();
        con.setConnectTimeoutMillis(5000);
        con.getFilterChain().addLast("codec", new ProtocolCodecFilter(new TextLineCodecFactory(Charset.forName("UTF-8"))));

        con.setHandler(new ConnectHandler());

        ConnectFuture future = con.connect(new InetSocketAddress("127.0.0.1", 6001));
        future.awaitUninterruptibly();
        @SuppressWarnings("unused")
        IoSession session = future.getSession();
    }

    class ConnectHandler extends IoHandlerAdapter {

        @Override
        public void sessionOpened(IoSession session) throws Exception {
            session.write("hello server");
        }

        @Override
        public void messageReceived(IoSession session, Object message)
                throws Exception {
            String str = message.toString();
            System.out.println("server:" + str);
        }

    }

    public static void main(String[] args) {
        new MinaClient().run();
    }

}
