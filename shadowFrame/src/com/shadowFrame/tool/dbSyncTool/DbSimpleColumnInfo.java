package com.shadowFrame.tool.dbSyncTool;

import com.google.common.base.Strings;

import java.util.Objects;

/**
 * 数据库表列信息
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/25 15:29
 */
public class DbSimpleColumnInfo {

    //列名
    private String name;
    //表名
    private String tableName;
    //前一个列名
    private String previousColumn;
    //列数据类型
    private String type;
    //排序规则
    private String collation;
    //是否可以为空
    private String isNull;
    //列键类型
    private String key;
    //默认值
    private String defaultValue;
    //额外内容
    private String extra;
    //权限
    private String privileges;
    //注释
    private String comment;
    //创建列的sql
    private String createSql;
    //添加列的sql
    private String addSql;
    //更改列的sql
    private String alterSql;
    //删除列的sql
    private String dropSql;

    public DbSimpleColumnInfo() {

    }

    /**
     * @return 列名
     */
    public String getName() {
        return name;
    }

    /**
     * 设置列名
     *
     * @param name 列名
     */
    public void setName(String name) {
        this.name = name;
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
     * @return 前一个列名
     */
    public String getPreviousColumn() {
        return previousColumn;
    }

    /**
     * 设置前一个列名
     *
     * @param previousColumn 前一个列名
     */
    public void setPreviousColumn(String previousColumn) {
        this.previousColumn = previousColumn;
    }

    /**
     * @return 列数据类型
     */
    public String getType() {
        return type;
    }

    /**
     * 设置列数据类型
     *
     * @param type 数据类型
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * @return 排序规则
     */
    public String getCollation() {
        return collation;
    }

    /**
     * 设置列排序规则
     *
     * @param collation 排序规则
     */
    public void setCollation(String collation) {
        this.collation = collation;
    }

    /**
     * @return 是否可以为空
     */
    public String getIsNull() {
        return isNull;
    }

    /**
     * 设置是否可以为空
     *
     * @param isNull 是否可以为空
     */
    public void setIsNull(String isNull) {
        this.isNull = isNull;
    }

    /**
     * @return 列键类型
     */
    public String getKey() {
        return key;
    }

    /**
     * 设置列键类型
     *
     * @param key 键类型
     */
    public void setKey(String key) {
        this.key = key;
    }

    /**
     * @return 默认值
     */
    public String getDefaultValue() {
        return defaultValue;
    }

    /**
     * 设置默认值
     *
     * @param defaultValue 默认值
     */
    public void setDefaultValue(String defaultValue) {
        this.defaultValue = defaultValue;
    }

    /**
     * @return 额外内容
     */
    public String getExtra() {
        return extra;
    }

    /**
     * 设置额外内容
     *
     * @param extra 额外内容
     */
    public void setExtra(String extra) {
        this.extra = extra;
    }

    /**
     * @return 权限
     */
    public String getPrivileges() {
        return privileges;
    }

    /**
     * 设置权限
     *
     * @param privileges 权限
     */
    public void setPrivileges(String privileges) {
        this.privileges = privileges;
    }

    /**
     * @return 注释
     */
    public String getComment() {
        return comment;
    }

    /**
     * 设置注释
     *
     * @param comment 注释
     */
    public void setComment(String comment) {
        this.comment = comment;
    }

    /**
     * @return 创建列的sql
     */
    public String getCreateSql() {
        return createSql;
    }

    /**
     * 设置创建列的sql
     *
     * @param sql 创建sql
     */
    public void setCreateSql(String sql) {
        createSql = sql;
        addSql = generateAddSql(sql);
        alterSql = generateAlterSql(sql);
        dropSql = generateDropSql();
    }

    /**
     * 生成添加列的sql
     *
     * @param sql 创建列sql
     * @return 添加列的sql
     */
    private String generateAddSql(String sql) {
        StringBuilder addSql = new StringBuilder("ALTER TABLE " + tableName + " ADD ");
        addSql.append(createSql);
        if (Strings.isNullOrEmpty(previousColumn)) {
            addSql.append(" FIRST;");
        } else {
            addSql.append(" AFTER " + previousColumn + ";");
        }
        return addSql.toString();
    }

    /**
     * 生成修改列的sql
     *
     * @param sql 创建列的sql
     * @return 修改列的sql
     */
    private String generateAlterSql(String sql) {
        StringBuilder alterSql = new StringBuilder("ALTER TABLE " + tableName + " MODIFY COLUMN ");
        alterSql.append(createSql + ";");
        return alterSql.toString();
    }

    /**
     * 生成删除列的sql
     *
     * @return 删除列的sql
     */
    private String generateDropSql() {
        StringBuilder dropSql = new StringBuilder("ALTER TABLE " + tableName + " DROP COLUMN " + name + ";");
        return dropSql.toString();
    }

    /**
     * @return 添加列sql
     */
    public String getAddSql() {
        return addSql;
    }

    /**
     * 设置添加列的sql
     *
     * @param addSql 添加列sql
     */
    public void setAddSql(String addSql) {
        this.addSql = addSql;
    }

    /**
     * @return 修改列的sql
     */
    public String getAlterSql() {
        return alterSql;
    }

    /**
     * 设置修改列的sql
     *
     * @param alterSql 修改列的sql
     */
    public void setAlterSql(String alterSql) {
        this.alterSql = alterSql;
    }

    /**
     * @return 删除列sql
     */
    public String getDropSql() {
        return dropSql;
    }

    /**
     * 设置删除列sql
     *
     * @param dropSql 删除列sql
     */
    public void setDropSql(String dropSql) {
        this.dropSql = dropSql;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DbSimpleColumnInfo that = (DbSimpleColumnInfo) o;
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
