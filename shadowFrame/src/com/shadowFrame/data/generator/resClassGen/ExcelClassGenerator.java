package com.shadowFrame.data.generator.resClassGen;

import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

/**
 * 使用excel资源生成映射类生成器
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ExcelClassGenerator {

	/**
	 * 生成映射类
	 * @param resourceDir 资源目录
	 */
	public static void generateFromExcel(String resourceDir) {
		File dir = new File(resourceDir);
		if (dir == null || !dir.isDirectory()) {
			return;
		}
		File[] files = dir.listFiles(new FileFilter() {

			@Override
			public boolean accept(File file) {
				if (file.isFile() && file.getName().endsWith(".xls") && file.getName().endsWith(".xlsx")) {
					return true;
				}
				return false;
			}
		});

		for (File file : files) {
			if (file.getName().endsWith(".xls")) {
				generateFromExcelXls(file);
			} else if (file.getName().endsWith(".xlsx")) {
				generateFromExcelXlsx(file);
			}
		}
	}

	private static void generateFromExcelXls(File file) {
		try {
			HSSFWorkbook book = new HSSFWorkbook(new FileInputStream(file));
			generateFromExcel(book);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private static void generateFromExcelXlsx(File file) {
		try {
			XSSFWorkbook book = new XSSFWorkbook(new FileInputStream(file));
			generateFromExcel(book);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private static void generateFromExcel(Workbook book) {
		Sheet sheet = book.getSheetAt(0);
		Row fieldRow = sheet.getRow(0);
		Row commentRow = sheet.getRow(1);
		for(int i = fieldRow.getFirstCellNum();i <= fieldRow.getRowNum();i++){
			Cell field = fieldRow.getCell(i);
			Cell comment = commentRow.getCell(i);
			ClassFileWriter.addField(field.toString(), "int", comment.toString());
		}
	}
}
