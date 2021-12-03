package com.shadowFrame.io.udp.nio;

import java.net.DatagramPacket;
import java.net.DatagramSocket;


public class NioUpdServer {

    public static void main(String[] args) throws Exception {
        //新建一个DatagramSocket服务，建立端点。  
        DatagramSocket ds = new DatagramSocket(10000);
        //定义数据包，用于存储数据  
        byte[] b = new byte[1024];
        DatagramPacket dp = new DatagramPacket(b, b.length);
        //通过服务的receive方法将收到的数据存到数据包  
        ds.receive(dp);
        //通过数据包的方法获取其中的数据  
        String ip = dp.getAddress().getHostAddress();
        String data = new String(dp.getData(), 0, dp.getLength());
        int port = dp.getPort();
        System.out.println(ip + "：" + data + ":" + port);
        //关闭资源  
        ds.close();
    }

}
