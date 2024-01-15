package com.shadowFrame.zkFrame.configFrame;

public interface IZKConfigModifier {

    boolean createConfig(String key,String value);

    boolean modifyConfig(String key,String value);

    boolean deleteConfig(String key);

    String getConfigPath();

}
