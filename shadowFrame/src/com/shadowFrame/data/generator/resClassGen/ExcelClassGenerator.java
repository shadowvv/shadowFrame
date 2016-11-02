package com.shadowFrame.data.generator.resClassGen;

import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.shadowFrame.data.generator.resClassGen.ResClassFileWriter.ResClassFileArchitecture;

/**
 * 使用excel资源生成映射类生成器
 * <p>
 * excel第一个标签页为数据。标签页中第一行为字段名，第二行为字段注释，第三行之后为数据
 * <p>
 * 文件样式参考resource目录下excelSmaple.xlsx
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ExcelClassGenerator {

	private ExcelClassGenerator() {

	}

	/**
	 * 生成映射类
	 * 
	 * @param resourceDir
	 *            资源目录
	 * @param classPackage
	 *            类包
	 * @param targetDir
	 *            资源映射类目标目录
	 * @param resourceFMT
	 *            资源导出类型
	 */
	public static void generateFromExcel(String resourceDir, String classPackage, String targetDir,
			String resourceFMT) {
		File dir = new File(resourceDir);
		if (dir == null || !dir.isDirectory()) {
			return;
		}
		if (classPackage == null) {
			return;
		}
		if (resourceFMT == null) {
			return;
		}
		File classDir = new File(targetDir);
		if (classDir == null || !classDir.isDirectory()) {
			return;
		}

		File[] files = dir.listFiles(new FileFilter() {

			@Override
			public boolean accept(File file) {
				if (file.isFile() && (file.getName().endsWith(".xls") || file.getName().endsWith(".xlsx"))) {
					return true;
				}
				return false;
			}
		});

		for (File file : files) {
			Workbook book = null;
			try {
				if (file.getName().endsWith(".xls")) {
					book = new HSSFWorkbook(new FileInputStream(file));

				} else if (file.getName().endsWith(".xlsx")) {
					book = new XSSFWorkbook(new FileInputStream(file));
				}
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			generateFromExcel(book, file.getName(), classPackage, targetDir, resourceFMT, resourceDir);
		}
	}

	private static void generateFromExcel(Workbook book, String className, String classPackage, String targetDir,
			String resourceFMT, String resourceDir) {
		ResClassFileArchitecture classFile = new ResClassFileArchitecture(
				className.substring(0, className.indexOf('.')), classPackage, resourceFMT, resourceDir);
		Sheet sheet = book.getSheetAt(0);
		if (sheet == null || sheet.getLastRowNum() < 3) {
			return;
		}
		Row fieldRow = sheet.getRow(0);
		Row commentRow = sheet.getRow(1);
		Row dataRow = sheet.getRow(2);
		for (int i = fieldRow.getFirstCellNum(); i < fieldRow.getLastCellNum(); i++) {
			Cell field = fieldRow.getCell(i);
			Cell comment = commentRow.getCell(i);
			Cell data = dataRow.getCell(i);
			classFile.addField(field.toString(), getFieldType(data), comment.toString());
		}
		classFile.setIdField(fieldRow.getCell(fieldRow.getFirstCellNum()).toString());
		classFile.writeClassFile(targetDir);
	}

	@SuppressWarnings("deprecation")
	private static String getFieldType(Cell cell) {
		String value = cell.toString();
		String type = "String";
		if (cell.getCellType() == CellType.NUMERIC.getCode()) {
			if (value.endsWith(".0")) {
				value = value.substring(0, value.lastIndexOf(".0"));
				long longValue = Long.parseLong(value);
				if (longValue > Integer.MAX_VALUE || longValue < Integer.MIN_VALUE) {
					type = "long";
				} else {
					type = "int";
				}
			} else {
				double doubleValue = Double.valueOf(value);
				if (doubleValue > Float.MAX_VALUE || doubleValue < Float.MIN_VALUE) {
					type = "float";
				} else {
					type = "double";
				}
			}
		}
		return type;
	}
}
