package com.shadowFrame.data.template.writer;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

import com.shadowFrame.data.template.base.IResourceWriter;

public class ExcelResourceWriter implements IResourceWriter {

	@Override
	public void writeResource(String resourceName, String targetDir, List<Map<String, String>> datas) {
		if (resourceName == null) {
			return;
		}
		if (targetDir == null) {
			return;
		}
		String name = targetDir + File.separator + resourceName + ".xls";
		File file = new File(name);
		if (file.exists()) {
			file.delete();
		}
		file.getParentFile().mkdirs();
		try {
			file.createNewFile();
			FileOutputStream output = new FileOutputStream(file);
			Workbook book = new HSSFWorkbook();
			Sheet sheet = book.createSheet();
			getFileContent(sheet, datas);
			book.write(output);
			book.close();
			output.flush();
			output.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void getFileContent(Sheet sheet, List<Map<String, String>> datas) {
		Set<String> fieldName = new LinkedHashSet<>();
		for (Map<String, String> data : datas) {
			for (String field : data.keySet()) {
				fieldName.add(field);
			}
		}
		List<Map<String, String>> realDatas = new ArrayList<>();
		for (Map<String, String> data : datas) {
			Map<String, String> realData = new LinkedHashMap<>();
			for (String field : fieldName) {
				String value = data.get(field);
				if (value != null) {
					realData.put(field, value);
				} else {
					realData.put(field, "");
				}
			}
			realDatas.add(realData);
		}

		Row fieldRow = sheet.createRow(0);
		Row commonRow = sheet.createRow(1);
		int index = 0;
		for (String field : fieldName) {
			Cell fieldCell = fieldRow.createCell(index);
			Cell commonCell = commonRow.createCell(index);
			fieldCell.setCellValue(field);
			commonCell.setCellValue("");
			index++;
		}

		int rowIndex = 2;
		for (Map<String, String> data : realDatas) {
			index = 0;
			Row dataRow = sheet.createRow(rowIndex);
			for (String field : fieldName) {
				Cell dataCell = dataRow.createCell(index);
				dataCell.setCellValue(data.get(field));
				index++;
			}
			rowIndex++;
		}
	}

	public static void main(String[] args) {
		List<Map<String, String>> datas = new LinkedList<>();
		Map<String, String> data = new LinkedHashMap<>();
		data.put("id", "1_id");
		data.put("min", "1");
		datas.add(data);
		data = new LinkedHashMap<>();
		data.put("id", "2_id");
		data.put("min", "2");
		datas.add(data);
		new ExcelResourceWriter().writeResource("test", "d:/resource", datas);
	}

}
