package com.shadowFrame.data.generator.resClassGen.ResClassFileWriter;

/**
 * 资源类字段信息
 *
 * @author Shadow
 * @version 1.0.0
 */
public class ResClassField {

    private String fieldName;
    private String fieldType;
    private String fieldComment;

    /**
     * @param fieldName    字段名
     * @param fieldType    字段类型
     * @param fieldComment 字段注释
     */
    public ResClassField(String fieldName, String fieldType, String fieldComment) {
        this.fieldName = fieldName;
        this.fieldType = fieldType;
        this.fieldComment = fieldComment;
    }

    /**
     * 字段名
     *
     * @return
     */
    public String getFieldName() {
        return fieldName;
    }

    /**
     * 字段类型
     *
     * @return
     */
    public String getFieldType() {
        return fieldType;
    }

    /**
     * 字段注释
     *
     * @return
     */
    public String getFieldComment() {
        return fieldComment;
    }
}
