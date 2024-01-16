package com.sample.zkFrame.balanceFrame;

public class ZKBalanceInfoSample {

    private int id;
    private String data;

    public ZKBalanceInfoSample(){

    }

    public ZKBalanceInfoSample(int id, String data) {
        this.id = id;
        this.data = data;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }
}
