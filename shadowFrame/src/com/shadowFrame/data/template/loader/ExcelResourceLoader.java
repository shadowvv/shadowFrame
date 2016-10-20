package com.shadowFrame.data.template.loader;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.shadowFrame.data.annotation.ExcelResource;
import com.shadowFrame.data.annotation.ResourceId;
import com.shadowFrame.data.template.base.IResourceLoader;
import com.shadowFrame.util.ClassUtil;
import com.shadowFrame.util.FileUtil;

/**
 * excel资源加载器
 * <p>
 * excel第一个标签页为数据。标签页中第一行为字段名，第二行为字段注释，第三行之后为数据
 * <p>
 * 文件样式参考resource目录下excelSmaple.xlsx
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ExcelResourceLoader implements IResourceLoader {

	@Override
	public <T> Map<String, T> loadResource(Class<T> resource, String fileName) {
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
			return null;
		}
		int dotIndex = fileName.lastIndexOf(".");
		if (dotIndex != -1) {
			String extension = fileName.substring(dotIndex);
			if (extension.equals(".xls")) {
				return loadXlsFile(resource, file);
			} else if (extension.equals(".xlsx")) {
				return loadXlsxFile(resource, file);
			} else {
				return null;
			}
		}
		return null;
	}

	private <T> Map<String, T> loadXlsFile(Class<T> resource, File file) {
		HSSFWorkbook book = null;
		try {
			book = new HSSFWorkbook(new FileInputStream(file));
			HSSFSheet sheet = book.getSheetAt(0);
			HSSFRow attrnameRow = sheet.getRow(0);
			if (attrnameRow == null) {
				return null;
			}
			ResourceId id = null;
			String keyAttrName = null;
			String keyAttrValue = null;
			Map<String, T> resources = new HashMap<>();
			for (int i = sheet.getFirstRowNum() + 2; i <= sheet.getPhysicalNumberOfRows(); i++) {
				HSSFRow dataRow = sheet.getRow(i);
				if(dataRow == null){
					continue;
				}
				T resourceObject = resource.newInstance();
				for(int j = dataRow.getFirstCellNum();j<= dataRow.getLastCellNum();j++){
					HSSFCell dataCell = dataRow.getCell(j);
					if(dataCell == null){
						continue;
					}
					ResourceLoader.setAttr(resourceObject, attrnameRow.getCell(j).toString(), dataCell.toString());
					if (id == null) {
						Field field = ClassUtil.getClassField(resource, attrnameRow.getCell(j).toString());
						if (field == null) {
							return null;
						}
						id = field.getAnnotation(ResourceId.class);
						if (id != null) {
							keyAttrName = attrnameRow.getCell(j).toString();
						}
					}
					if (keyAttrName != null && keyAttrName.equals(attrnameRow.getCell(j).toString())) {
						keyAttrValue = dataCell.toString();
						if (resources.containsKey(keyAttrValue)) {
							return null;
						}
						resources.put(keyAttrValue, resourceObject);
					}
				}
			}
			book.close();
			return resources;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}finally{
			if(book != null){
				try {
					book.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

	private <T> Map<String, T> loadXlsxFile(Class<T> resource, File file) {
		XSSFWorkbook book = null;
		try {
			book = new XSSFWorkbook(new FileInputStream(file));
			XSSFSheet sheet = book.getSheetAt(0);
			XSSFRow attrnameRow = sheet.getRow(0);
			if (attrnameRow == null) {
				return null;
			}
			ResourceId id = null;
			String keyAttrName = null;
			String keyAttrValue = null;
			Map<String, T> resources = new HashMap<>();
			for (int i = sheet.getFirstRowNum() + 2; i <= sheet.getPhysicalNumberOfRows(); i++) {
				XSSFRow dataRow = sheet.getRow(i);
				if(dataRow == null){
					continue;
				}
				T resourceObject = resource.newInstance();
				for(int j = dataRow.getFirstCellNum();j<= dataRow.getLastCellNum();j++){
					XSSFCell dataCell = dataRow.getCell(j);
					if(dataCell == null){
						continue;
					}
					ResourceLoader.setAttr(resourceObject, attrnameRow.getCell(j).toString(), dataCell.toString());
					if (id == null) {
						Field field = ClassUtil.getClassField(resource, attrnameRow.getCell(j).toString());
						if (field == null) {
							return null;
						}
						id = field.getAnnotation(ResourceId.class);
						if (id != null) {
							keyAttrName = attrnameRow.getCell(j).toString();
						}
					}
					if (keyAttrName != null && keyAttrName.equals(attrnameRow.getCell(j).toString())) {
						keyAttrValue = dataCell.toString();
						if (resources.containsKey(keyAttrValue)) {
							return null;
						}
						resources.put(keyAttrValue, resourceObject);
					}
				}
			}
			book.close();
			return resources;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		}finally{
			if(book != null){
				try {
					book.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

	@Override
	public <T> Map<String, T> loadResource(Class<T> resource) {
		ExcelResource resAnnotation = resource.getAnnotation(ExcelResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != ExcelResourceLoader.class) {
			return null;
		}
		return loadResource(resource, resAnnotation.fileName());
	}

}
