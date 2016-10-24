package com.shadowFrame.data.generator.resClassGen.ResClassFileWriter;

import java.util.HashMap;
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
	private Map<String, ResClassField> fieldMap;

	/**
	 * 
	 * @param className
	 *            类名
	 * @param classPackage
	 *            类包名
	 */
	public ResClassFileArchitecture(String className, String classPackage) {
		this.className = className;
		this.classPackage = classPackage;
		fieldMap = new HashMap<>();
	}

	/**
	 * 
	 * @param classFile
	 *            类
	 */
	public ResClassFileArchitecture(Class<?> classFile) {
		className = classFile.getSimpleName();
		classPackage = classFile.getPackage().getName();
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
	public boolean addField(String fieldName, String fieldType,
			String fieldComment) {
		if (fieldMap.containsKey(fieldName)) {
			return false;
		}
		ResClassField field = new ResClassField(fieldName, fieldType,
				fieldComment);
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
	 * 写入类
	 */
	public void writeClassFile() {
		ResClassFileWriter.writeClassFile(this);
	}
}
