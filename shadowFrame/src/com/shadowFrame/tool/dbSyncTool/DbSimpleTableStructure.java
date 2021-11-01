package com.shadowFrame.tool.dbSyncTool;

import com.google.common.base.Strings;

import java.util.Map;
import java.util.Objects;

/**
 * 数据库表结构信息
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/25 15:27
 */
public class DbSimpleTableStructure {

    //表名
    private String tableName;
    //表引擎
    private String engine;
    //表编码格式
    private String charset;
    //表列数据格式
    private String rowFormant;
    //注释
    private String comment;
    //创建表sql
    private String createSql;
    //修改表sql
    private String alterSql;
    //表中列信息
    private Map<String, DbSimpleColumnInfo> tableColumn;
    //表中索引信息
    private Map<String, DbSimpleIndexInfo> tableIndex;

    public DbSimpleTableStructure() {

    }

    /**
     * 表结构信息构造方法
     *
     * @param tableName    表名
     * @param tableColumns 表中列信息
     * @param tableIndexes 表中索引信息
     * @param createSql    创建表sql
     */
    public DbSimpleTableStructure(String tableName, Map<String, DbSimpleColumnInfo> tableColumns, Map<String, DbSimpleIndexInfo> tableIndexes, String createSql) {
        this.tableName = tableName;
        this.tableColumn = tableColumns;
        this.tableIndex = tableIndexes;
        this.createSql = createSql;
        parseCreateSql(createSql);
    }

    /**
     * 拆分创建sql
     *
     * @param createSql 表创建sql
     * @return 表编码格式
     */
    private void parseCreateSql(String createSql) {
        if (Strings.isNullOrEmpty(createSql)) {
            return;
        }
        String body = createSql.substring(createSql.indexOf('(') + 2, createSql.lastIndexOf(") ENGINE"));
        String param = createSql.substring(createSql.lastIndexOf(") ENGINE") + 2, createSql.length());
        parseColumnAndKeyCreateSql(body);
        parseTableParam(param);
        return;
    }

    /**
     * 拆分列和索引sql
     *
     * @param sql 列和索引sql
     */
    private void parseColumnAndKeyCreateSql(String sql) {
        String[] elements = sql.split("\\n");
        for (String element : elements) {
            String elementName = element.substring(element.indexOf("`") + 1, element.indexOf("`", element.indexOf("`") + 1));
            if (element.charAt(element.length() - 1) == ',') {
                element = element.substring(0, element.length() - 1);
            }
            if (element.contains(" KEY ")) {
                if (element.contains(" PRIMARY ")) {
                    elementName = "PRIMARY";
                }
                if (!tableIndex.containsKey(elementName)) {
                    System.err.println("表：" + tableName + " 索引：" + elementName + " 异常");
                    continue;
                }
                tableIndex.get(elementName).setCreateSql(element.trim());
            } else {
                if (!tableColumn.containsKey(elementName)) {
                    System.err.println("表：" + tableName + " 列：" + elementName + " 异常");
                    continue;
                }
                tableColumn.get(elementName).setCreateSql(element.trim());
            }
        }
    }

    /**
     * 拆分表参数
     *
     * @param sql 参数sql
     */
    private void parseTableParam(String sql) {
        String[] elements = sql.split(" ");
        for (String element : elements) {
            String value = null;
            if (element.contains("=")) {
                value = element.substring(element.indexOf("=") + 1, element.length());
            }
            if (element.contains("ENGINE")) {
                engine = value;
            }
            if (element.contains("CHARSET")) {
                charset = value;
            }
            if (element.contains("ROW_FORMAT")) {
                rowFormant = value;
            }
            if (element.contains("COMMENT")) {
                comment = value;
            }
        }
        alterSql = "ALTER TABLE " + tableName + " " + sql + ";";
    }

    /**
     * @return 表名
     */
    public String getTableName() {
        return tableName;
    }

    /**
     * 设置表名
     *
     * @param tableName 表名
     */
    public void setTableName(String tableName) {
        this.tableName = tableName;
    }

    /**
     * @return 列信息
     */
    public Map<String, DbSimpleColumnInfo> getTableColumn() {
        return tableColumn;
    }

    /**
     * 设置表列信息
     *
     * @param tableColumn 列信息
     */
    public void setTableColumn(Map<String, DbSimpleColumnInfo> tableColumn) {
        this.tableColumn = tableColumn;
    }

    /**
     * @return 索引信息
     */
    public Map<String, DbSimpleIndexInfo> getTableIndex() {
        return tableIndex;
    }

    /**
     * 设置表索引信息
     *
     * @param tableIndex 索引信息
     */
    public void setTableIndex(Map<String, DbSimpleIndexInfo> tableIndex) {
        this.tableIndex = tableIndex;
    }

    /**
     * @return 创建表sql
     */
    public String getCreateSql() {
        return createSql;
    }

    /**
     * 设置创建表sql
     *
     * @param createSql 创建sql
     */
    public void setCreateSql(String createSql) {
        this.createSql = createSql;
    }

    /**
     * @return 修改表参数sql
     */
    public String getAlterSql() {
        return alterSql;
    }

    /**
     * 设置修改表参数sql
     *
     * @param alterSql 修改表参数sql
     */
    public void setAlterSql(String alterSql) {
        this.alterSql = alterSql;
    }

    /**
     * @return 表引擎
     */
    public String getEngine() {
        return engine;
    }

    /**
     * 设置表引擎
     *
     * @param engine 表引擎
     */
    public void setEngine(String engine) {
        this.engine = engine;
    }

    /**
     * @return 表编码格式
     */
    public String getCharset() {
        return charset;
    }

    /**
     * 设置表编码格式
     *
     * @param charset 表编码格式
     */
    public void setCharset(String charset) {
        this.charset = charset;
    }

    /**
     * @return 行数据格式
     */
    public String getRowFormant() {
        return rowFormant;
    }

    /**
     * 设置行数据格式
     *
     * @param rowFormant 行数据格式
     */
    public void setRowFormant(String rowFormant) {
        this.rowFormant = rowFormant;
    }

    /**
     * @return 表注释
     */
    public String getComment() {
        return comment;
    }

    /**
     * 设置表注释
     *
     * @param comment 表注释
     */
    public void setComment(String comment) {
        this.comment = comment;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DbSimpleTableStructure that = (DbSimpleTableStructure) o;
        return Objects.equals(createSql, that.createSql);
    }

    @Override
    public int hashCode() {
        return Objects.hash(createSql);
    }

    @Override
    public String toString() {
        return createSql;
    }
}
