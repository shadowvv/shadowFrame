package com.shadowFrame.data.generator.resClassGen.ResClassFileWriter;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 资源类结构
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ResClassFileArchitecture {

	private String className;
	private String classPackage;
	private String resourceFMT;
	private String idField;
	private String resourceDir;
	private Map<String, ResClassField> fieldMap;

	/**
	 * 
	 * @param className
	 *            类名
	 * @param classPackage
	 *            类包名
	 * @param resourceFMT
	 *            资源格式
	 * @param resourceDir
	 *            资源目录
	 */
	public ResClassFileArchitecture(String className, String classPackage, String resourceFMT, String resourceDir) {
		this.className = className;
		this.classPackage = classPackage;
		this.resourceFMT = resourceFMT;
		this.resourceDir = resourceDir;
		fieldMap = new HashMap<>();
	}

	/**
	 * 添加类字段
	 * 
	 * @param fieldName
	 *            字段名
	 * @param fieldType
	 *            字段类型
	 * @param fieldComment
	 *            字段注释
	 * @return 添加成功
	 */
	public boolean addField(String fieldName, String fieldType, String fieldComment) {
		if (fieldMap.containsKey(fieldName)) {
			return false;
		}
		ResClassField field = new ResClassField(fieldName, fieldType, fieldComment);
		fieldMap.put(fieldName, field);
		return true;
	}

	/**
	 * 类名
	 * 
	 * @return
	 */
	public String getClassName() {
		return className;
	}

	/**
	 * 类包名
	 * 
	 * @return
	 */
	public String getClassPackage() {
		return classPackage;
	}

	/**
	 * 
	 * @return 资源类型
	 */
	public String getResourceFMT() {
		return resourceFMT;
	}

	/**
	 * 类写入文件
	 * 
	 * @param dir
	 *            目录
	 */
	public void writeClassFile(String dir) {
		ResClassFileWriter.writeClassFile(dir, this);
	}

	/**
	 * 
	 * @param idField
	 *            资源id字段名
	 */
	public void setIdField(String idField) {
		this.idField = idField;
	}

	/**
	 * 
	 * @return 资源id字段名
	 */
	public String getIdField() {
		return idField;
	}

	/**
	 * 
	 * @return 资源目录
	 */
	public String getResDir() {
		return resourceDir;
	}

	/**
	 * 
	 * @return 类字段
	 */
	public List<ResClassField> getClassFields() {
		return new ArrayList<>(fieldMap.values());
	}

	/**
	 * 获得类字段
	 * 
	 * @param fieldName
	 *            字段名
	 * @return
	 */
	public ResClassField getField(String fieldName) {
		return fieldMap.get(fieldName);
	}
}
