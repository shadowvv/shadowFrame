package com.shadowFrame.io.net;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.net.UnknownHostException;

/**
 * 原生socket客户端连接
 *
 * @author shadow
 */
public class ClientSocketNet implements IClientNet {

    private Socket net;

    public ClientSocketNet() {
    }

    @Override
    public void connect(String ip, int port) {
        try {
            net = new Socket(ip, port);
        } catch (UnknownHostException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void send(byte[] message) {
        try {
            ByteArrayOutputStream writer = new ByteArrayOutputStream(message.length);
            writer.write(message);
            writer.writeTo(net.getOutputStream());
            writer.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public byte[] receive(int length) {
        byte[] messageByte = new byte[length];
        try {
            InputStream in = net.getInputStream();
            if (in.read(messageByte) == length) {
                return messageByte;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public boolean isActive() {
        return net.isConnected();
    }

}
