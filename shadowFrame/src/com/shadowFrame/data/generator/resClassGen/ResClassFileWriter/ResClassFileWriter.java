package com.shadowFrame.data.generator.resClassGen.ResClassFileWriter;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import com.shadowFrame.data.annotation.CsvResource;
import com.shadowFrame.data.annotation.ExcelResource;
import com.shadowFrame.data.annotation.JsonResource;
import com.shadowFrame.data.annotation.PropertiesResource;
import com.shadowFrame.data.annotation.ResourceId;
import com.shadowFrame.data.annotation.XmlResource;
import com.shadowFrame.data.template.base.BaseTemplate;
import com.shadowFrame.log.ShadowLogger;
import com.shadowFrame.util.StringUtil;

/**
 * 映射类文件写入
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ResClassFileWriter {

	private ResClassFileWriter() {

	}

	/**
	 * 类写入文件
	 * 
	 * @param dir
	 *            文件目录
	 * @param resClassFileArchitecture
	 *            文件结构
	 */
	public static void writeClassFile(String dir, ResClassFileArchitecture resClassFileArchitecture) {
		String packageName = resClassFileArchitecture.getClassPackage();
		String packagePath = packageName.replace('.', File.separatorChar);
		String filePath = dir + File.separatorChar + packagePath + File.separatorChar
				+ resClassFileArchitecture.getClassName() + ".java";
		File file = new File(filePath);
		try {
			if (file.exists()) {
				file.delete();
			}
			file.getParentFile().mkdirs();
			file.createNewFile();
			StringBuilder fileContent = getClassFileContent(resClassFileArchitecture);
			FileOutputStream output = new FileOutputStream(file);
			output.write(fileContent.toString().getBytes());
			output.flush();
			output.close();
			ShadowLogger.logPrintln("generate " + filePath + " success");
		} catch (IOException e) {
			ShadowLogger.exceptionPrintln("generate " + filePath + " catch exception:" + e.getMessage());
		}
	}

	private static StringBuilder getClassFileContent(ResClassFileArchitecture resClassFileArchitecture) {
		StringBuilder fileContent = new StringBuilder();
		fileContent.append("package " + resClassFileArchitecture.getClassPackage() + ";\n");
		fileContent.append("\n");
		fileContent.append("import " + BaseTemplate.class.getName() + ";\n");
		fileContent.append("import " + ResourceId.class.getName() + ";\n");
		switch (resClassFileArchitecture.getResourceFMT()) {
		case "csv":
			fileContent.append("import " + CsvResource.class.getName() + "\n");
			fileContent.append("\n");
			fileContent.append("@CsvResource(fileName = \"" + resClassFileArchitecture.getResDir()
					+ resClassFileArchitecture.getClassName() + "." + resClassFileArchitecture.getResourceFMT() + "\")"
					+ "\n");
			break;
		case "json":
			fileContent.append("import " + JsonResource.class.getName() + "\n");
			fileContent.append("\n");
			fileContent.append("@JsonResource(fileName = \"" + resClassFileArchitecture.getResDir()
					+ resClassFileArchitecture.getClassName() + "." + resClassFileArchitecture.getResourceFMT() + "\")"
					+ "\n");
			break;
		case "xml":
			fileContent.append("import " + XmlResource.class.getName() + "\n");
			fileContent.append("\n");
			fileContent.append("@XmlResource(fileName = \"" + resClassFileArchitecture.getResDir()
					+ resClassFileArchitecture.getClassName() + "." + resClassFileArchitecture.getResourceFMT() + "\")"
					+ "\n");
			break;
		case "xls":
		case "xlsx":
			fileContent.append("import " + ExcelResource.class.getName() + "\n");
			fileContent.append("\n");
			fileContent.append("@ExcelResource(fileName = \"" + resClassFileArchitecture.getResDir()
					+ resClassFileArchitecture.getClassName() + "." + resClassFileArchitecture.getResourceFMT() + "\")"
					+ "\n");
			break;
		case "cfg":
			fileContent.append("import " + PropertiesResource.class.getName() + "\n");
			fileContent.append("\n");
			fileContent.append("@PropertiesResource(fileName = \"" + resClassFileArchitecture.getResDir()
					+ resClassFileArchitecture.getClassName() + "." + resClassFileArchitecture.getResourceFMT() + "\")"
					+ "\n");
			break;
		default:
			return null;
		}
		fileContent.append("public class " + StringUtil.upperHeadCase(resClassFileArchitecture.getClassName())
				+ " extends BaseTemplate {");
		fileContent.append("\n");
		fileContent.append(buildField(resClassFileArchitecture));
		fileContent.append("}");
		return fileContent;
	}

	private static String buildField(ResClassFileArchitecture resClassFileArchitecture) {
		StringBuilder FieldContent = new StringBuilder();
		String idField = resClassFileArchitecture.getIdField();
		if (idField != null) {
			String idComment = resClassFileArchitecture.getField(idField).getFieldComment();
			if (idComment != null && !idComment.isEmpty()) {
				FieldContent.append(getFieldComment(idComment));
			}
			FieldContent.append("	@ResourceId" + "\n");
			FieldContent.append("	private String " + idField + ";\n");
		}
		List<ResClassField> fields = resClassFileArchitecture.getClassFields();
		for (ResClassField resClassField : fields) {
			if (resClassField.getFieldName().equals(idField)) {
				continue;
			}
			if (resClassField.getFieldComment() != null && resClassField.getFieldComment().isEmpty()) {
				FieldContent.append(getFieldComment(resClassField.getFieldComment()));
			}
			FieldContent
					.append("	private " + resClassField.getFieldType() + " " + resClassField.getFieldName() + ";\n");
		}
		FieldContent.append("\n");
		for (ResClassField resClassField : fields) {
			if (resClassField.getFieldComment() != null && resClassField.getFieldComment().isEmpty()) {
				FieldContent.append(getFieldComment(resClassField.getFieldComment()));
			}
			FieldContent.append("	public " + resClassField.getFieldType() + " get"
					+ StringUtil.upperHeadCase(resClassField.getFieldName()) + "(){" + "\n");
			FieldContent.append("		return " + resClassField.getFieldName() + ";" + "\n");
			FieldContent.append("	}" + "\n");
			FieldContent.append("\n");
		}
		return FieldContent.toString();
	}

	private static String getFieldComment(String comment) {
		StringBuilder commentBuilder = new StringBuilder();
		commentBuilder.append("	/**" + "\n");
		commentBuilder.append("	 * " + comment + "\n");
		commentBuilder.append("	 */" + "\n");
		return commentBuilder.toString();
	}

}
