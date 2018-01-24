package com.shadowFrame.io.udp.nio;

import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

public class NioUdpClient {

    public static void main(String[] args) throws Exception  
    {  
        //通过DatagramSocket对象创建UDP服务  
        DatagramSocket ds = new DatagramSocket();  
        //确定数据，并封装成数据包。DatagramPacket(byte[] buf, int length, InetAddress address, int port)  
        byte [] b = "ds dd df".getBytes();  
        DatagramPacket dp = new DatagramPacket(b,b.length,InetAddress.getByName("127.0.0.1"),10000);  
        //通过Socket服务，通过Send方法将数据包发送出去  
        ds.send(dp);  
        //关闭资源  
        ds.close();  
    } 
	
}
