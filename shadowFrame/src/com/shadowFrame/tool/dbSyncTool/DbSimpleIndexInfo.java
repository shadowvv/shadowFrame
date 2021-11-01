package com.shadowFrame.tool.dbSyncTool;

import java.util.Objects;

/**
 * 数据库表索引信息
 *
 * @author shadow
 * @version 1.0.0
 * @time 2021/10/25 18:11
 */
public class DbSimpleIndexInfo {

    //索引名
    private String name;
    //表名
    private String tableName;
    //索引是否唯一
    private String isUnique;
    //索引对应列
    private String column;
    //排序规则
    private String collation;
    //索引中唯一值数目的估计值
    private String cardinality;
    //列中被编入索引字符数量
    private String subPart;
    //指定关键字如何被压缩
    private String packed;
    //索引列中是否包含null
    private String containNull;
    //索引使用的类型和方法
    private String indexType;
    //注释
    private String Comment;
    //索引注释
    private String indexComment;
    //创建索引的sql
    private String createSql;
    //添加索引的sql
    private String addSql;
    //更改索引的sql
    private String alterSql;
    //删除索引的sql
    private String dropSql;

    public DbSimpleIndexInfo() {

    }

    /**
     * @return 索引名
     */
    public String getName() {
        return name;
    }

    /**
     * 设置索引名
     *
     * @param name 索引名
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
     * @return 索引是否为唯一索引
     */
    public String getIsUnique() {
        return isUnique;
    }

    /**
     * 设置索引是否为唯一索引
     *
     * @param isUnique 索引是否为唯一索引
     */
    public void setIsUnique(String isUnique) {
        this.isUnique = isUnique;
    }

    /**
     * @return 索引包含的列
     */
    public String getColumn() {
        return column;
    }

    /**
     * 设置索引对于类名
     *
     * @param column 类名
     */
    public void setColumn(String column) {
        this.column = column;
    }

    /**
     * @return 排序规则
     */
    public String getCollation() {
        return collation;
    }

    /**
     * 设置排序规则
     *
     * @param collation 排序规则
     */
    public void setCollation(String collation) {
        this.collation = collation;
    }

    /**
     * @return 索引唯一值数据的估计值
     */
    public String getCardinality() {
        return cardinality;
    }

    /**
     * 设置索引唯一值数目的估计值
     *
     * @param cardinality 索引唯一值数目的估计值
     */
    public void setCardinality(String cardinality) {
        this.cardinality = cardinality;
    }

    /**
     * @return 编入索引的字符数量
     */
    public String getSubPart() {
        return subPart;
    }

    /**
     * 设置索引列中被编入索引的字符数量
     *
     * @param subPart 索引列中被编入索引的字符数量
     */
    public void setSubPart(String subPart) {
        this.subPart = subPart;
    }

    /**
     * @return 指示关键字如何被压缩
     */
    public String getPacked() {
        return packed;
    }

    /**
     * 设置索引指示关键字如何被压缩
     *
     * @param packed 索引指示关键字如何被压缩
     */
    public void setPacked(String packed) {
        this.packed = packed;
    }

    /**
     * @return 索引列中是否包含null
     */
    public String getContainNull() {
        return containNull;
    }

    /**
     * 设置索引列中是否包含null
     *
     * @param containNull 索引列中是否包含null
     */
    public void setContainNull(String containNull) {
        this.containNull = containNull;
    }

    /**
     * @return 索引使用的类型和方法
     */
    public String getIndexType() {
        return indexType;
    }

    /**
     * 设置索引使用的类型和方法
     *
     * @param indexType 索引使用的类型和方法
     */
    public void setIndexType(String indexType) {
        this.indexType = indexType;
    }

    /**
     * @return 注释
     */
    public String getComment() {
        return Comment;
    }

    /**
     * 设置注释
     *
     * @param comment 注释
     */
    public void setComment(String comment) {
        Comment = comment;
    }

    /**
     * @return 注释索引
     */
    public String getIndexComment() {
        return indexComment;
    }

    /**
     * 设置索引注释
     *
     * @param indexComment 索引注释
     */
    public void setIndexComment(String indexComment) {
        this.indexComment = indexComment;
    }

    /**
     * @return 创建索引的sql
     */
    public String getCreateSql() {
        return createSql;
    }

    /**
     * 设置创建索引的sql
     *
     * @param sql 创建sql
     */
    public void setCreateSql(String sql) {
        createSql = sql;
        addSql = generateAddSql(sql);
        dropSql = generateDropSql();
        alterSql = generateAlterSql();
    }

    /**
     * 生成添加索引的sql
     *
     * @param sql 创建索引sql
     * @return 添加索引的sql
     */
    private String generateAddSql(String sql) {
        StringBuilder addSql = new StringBuilder("ALTER TABLE " + tableName + " ADD ");
        addSql.append(createSql + ";");
        return addSql.toString();
    }

    /**
     * 生成修改索引的sql
     *
     * @return 修改索引的sql
     */
    private String generateAlterSql() {
        StringBuilder alterSql = new StringBuilder(dropSql);
        alterSql.append(addSql);
        return alterSql.toString();
    }

    /**
     * 生成删除索引的sql
     *
     * @return 删除索引的sql
     */
    private String generateDropSql() {
        StringBuilder dropSql = new StringBuilder("ALTER TABLE " + tableName + " DROP ");
        if (name.equals("PRIMARY")) {
            dropSql.append("PRIMARY KEY;");
        } else {
            dropSql.append("INDEX " + name + ";");
        }
        return dropSql.toString();
    }

    /**
     * @return 添加索引sql
     */
    public String getAddSql() {
        return addSql;
    }

    /**
     * 设置添加索引的sql
     *
     * @param addSql 添加索引sql
     */
    public void setAddSql(String addSql) {
        this.addSql = addSql;
    }

    /**
     * @return 修改索引的sql
     */
    public String getAlterSql() {
        return alterSql;
    }

    /**
     * 设置修改索引的sql
     *
     * @param alterSql 修改索引的sql
     */
    public void setAlterSql(String alterSql) {
        this.alterSql = alterSql;
    }

    /**
     * @return 删除索引的sql
     */
    public String getDropSql() {
        return dropSql;
    }

    /**
     * 设置删除索引的sql
     *
     * @param dropSql 删除索引的sql
     */
    public void setDropSql(String dropSql) {
        this.dropSql = dropSql;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        DbSimpleIndexInfo that = (DbSimpleIndexInfo) o;
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
