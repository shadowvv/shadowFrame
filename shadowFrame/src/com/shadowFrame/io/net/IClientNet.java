package com.shadowFrame.io.net;

public interface IClientNet {

	void connect(String ip, int port);

	void send(Object message);

	void receive(Object message);

	boolean isActive();

}
