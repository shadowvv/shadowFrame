package com.shadowFrame.tool.dbSyncTool;

import java.io.File;
import java.io.FileInputStream;
import java.util.Properties;

/**
 * 数据库同步配置表
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/22 17:05
 */
public class DbSyncConfig {

    //数据库同步源链接
    private final String SOURCE_CONNECT = "sourceConnect";
    //同步源用户名
    private final String SOURCE_USER_NAME = "sourceUserName";
    //同步源密码
    private final String SOURCE_PASSWORD = "sourcePassword";
    //配置库链接
    private final String CONFIG_CONNECT = "configConnect";
    //配置库用户名
    private final String CONFIG_USER_NAME = "configUserName";
    //配置库密码
    private final String CONFIG_PASSWORD = "configPassword";
    //是否删除列
    private final String GAME_DB_CONFIG_TABLE_NAME = "gameDbConfigTableName";
    //比较数据库链接
    private final String COMPARE_CONNECT = "compareConnect";
    //比较库用户名
    private final String COMPARE_USER_NAME = "compareUserName";
    //比较库密码
    private final String COMPARE_PASSWORD = "comparePassword";
    //是否删除表
    private final String DROP_TABLE = "dropTable";
    //是否删除列
    private final String DROP_COLUMN = "dropColumn";
    //是否在比较库运行sql
    private final String RUN_UPDATE_SQL_ON_COMPARE = "runUpdateSqlOnCompare";
    //目标版本名
    private final String TARGET_VERSION_NAME = "targetVersionName";
    //同步数据库表数量
    private final String TABLE_COUNT = "tableCount";
    //同步工具配置信息
    private Properties configProps;

    /**
     * 数据库同步工具配置
     *
     * @param configPath 工具配置文件路径
     */
    public DbSyncConfig(String configPath) {
        parseConfig(configPath);
    }

    /**
     * 分析填充配置
     *
     * @param configPath 配置文件路径
     */
    private void parseConfig(String configPath) {
        try {
            File file = new File(configPath);
            configProps = new Properties();
            FileInputStream stream = new FileInputStream(file);
            configProps.load(stream);
            stream.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 获得配置信息
     *
     * @param key 配置键
     * @return 配置值
     */
    public String getValue(String key) {
        String value = configProps.getProperty(key);
        return value;
    }

    /**
     * @return 数据库同步源链接
     */
    public String getSourceConnect() {
        return getValue(SOURCE_CONNECT);
    }

    /**
     * @return 同步源用户名
     */
    public String getSourceUserName() {
        return getValue(SOURCE_USER_NAME);
    }

    /**
     * @return 同步源密码
     */
    public String getSourcePassword() {
        return getValue(SOURCE_PASSWORD);
    }

    /**
     * @return 配置库链接
     */
    public String getConfigConnect() {
        return getValue(CONFIG_CONNECT);
    }

    /**
     * @return 配置库用户名
     */
    public String getConfigUserName() {
        return getValue(CONFIG_USER_NAME);
    }

    /**
     * @return 配置库密码
     */
    public String getConfigPassword() {
        return getValue(CONFIG_PASSWORD);
    }

    /**
     * @return 配置导出库名表
     */
    public String getGameDbConfigTableName() {
        return getValue(GAME_DB_CONFIG_TABLE_NAME);
    }

    /**
     * @return 比较数据库链接
     */
    public String getCompareConnect() {
        return getValue(COMPARE_CONNECT);
    }

    /**
     * @return 比较库用户名
     */
    public String getCompareUserName() {
        return getValue(COMPARE_USER_NAME);
    }

    /**
     * @return 比较库密码
     */
    public String getComparePassword() {
        return getValue(COMPARE_PASSWORD);
    }

    /**
     * @return 是否删除表
     */
    public boolean isDropTable() {
        return Boolean.parseBoolean(getValue(DROP_TABLE));
    }

    /**
     * @return 是否删除列
     */
    public boolean isDropColumn() {
        return Boolean.parseBoolean(getValue(DROP_COLUMN));
    }

    /**
     * @return 是否在比较库运行sql
     */
    public boolean isRunUpdateSqlOnCompare() {
        return Boolean.parseBoolean(getValue(RUN_UPDATE_SQL_ON_COMPARE));
    }

    /**
     * @return 目标版本名
     */
    public String getTargetVersionName() {
        return getValue(TARGET_VERSION_NAME);
    }

    /**
     * @return 同步数据库表数量
     */
    public int getTableCount() {
        return Integer.parseInt(getValue(TABLE_COUNT));
    }
}
