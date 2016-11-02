package com.shadowFrame.data.template.loader;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.shadowFrame.data.annotation.ExcelResource;
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
	public <T> Map<String, T> loadResources(Class<T> resource) {
		ExcelResource resAnnotation = resource.getAnnotation(ExcelResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != ExcelResourceLoader.class) {
			return null;
		}
		return loadResourcesFromFile(resource, resAnnotation.fileName());
	}

	@Override
	public <T> Map<String, T> loadResourcesFromFile(Class<T> resource, String fileName) {
		return loadResources(resource, fileName, ResourceLoader.getIdFieldName(resource));
	}

	@Override
	public <T> Map<String, T> loadResourcesWithResourceId(Class<T> resource, String resourceId) {
		ExcelResource resAnnotation = resource.getAnnotation(ExcelResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != ExcelResourceLoader.class) {
			return null;
		}
		return loadResources(resource, resAnnotation.fileName(), resourceId);
	}

	@Override
	public <T> Map<String, T> loadResources(Class<T> resource, String fileName, String resourceId) {
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
			return null;
		}
		if (resourceId == null) {
			return null;
		}
		if (!ClassUtil.isContainField(resource, resourceId)) {
			return null;
		}
		int dotIndex = fileName.lastIndexOf(".");
		if (dotIndex != -1) {
			Workbook book = null;
			String extension = fileName.substring(dotIndex + 1);
			try {
				if (FileUtil.EXCEL03.equals(extension)) {
					book = new HSSFWorkbook(new FileInputStream(file));
					return loadExcelFile(book, resource, resourceId);
				} else if (FileUtil.EXCEL07.equals(extension)) {
					book = new XSSFWorkbook(new FileInputStream(file));
					return loadExcelFile(book, resource, resourceId);
				} else {
					return null;
				}
			} catch (Exception e) {
				return null;
			}

		}
		return null;
	}

	@Override
	public <T> T loadResource(Class<T> resource, String resourceIdValue) {
		ExcelResource resAnnotation = resource.getAnnotation(ExcelResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != ExcelResourceLoader.class) {
			return null;
		}
		return loadResourceFromFile(resource, resAnnotation.fileName(), resourceIdValue);
	}

	@Override
	public <T> T loadResourceFromFile(Class<T> resource, String fileName, String resourceIdValue) {
		return loadResource(resource, fileName, ResourceLoader.getIdFieldName(resource), resourceIdValue);
	}

	@Override
	public <T> T loadResourceWithResourceId(Class<T> resource, String resourceId, String resourceIdValue) {
		ExcelResource resAnnotation = resource.getAnnotation(ExcelResource.class);
		if (resAnnotation == null) {
			return null;
		}
		if (resAnnotation.loader() != ExcelResourceLoader.class) {
			return null;
		}
		return loadResource(resource, resAnnotation.fileName(), resourceId, resourceIdValue);
	}

	@Override
	public <T> T loadResource(Class<T> resource, String fileName, String resourceId, String resourceIdValue) {
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
			return null;
		}
		if (resourceId == null) {
			return null;
		}
		if (resourceIdValue == null) {
			return null;
		}
		if (!ClassUtil.isContainField(resource, resourceId)) {
			return null;
		}
		int dotIndex = fileName.lastIndexOf(".");
		if (dotIndex != -1) {
			Workbook book = null;
			String extension = fileName.substring(dotIndex + 1);
			try {
				if (FileUtil.EXCEL03.equals(extension)) {
					book = new HSSFWorkbook(new FileInputStream(file));
					return loadExcelElement(book, resource, resourceId, resourceIdValue);
				} else if (FileUtil.EXCEL07.equals(extension)) {
					book = new XSSFWorkbook(new FileInputStream(file));
					return loadExcelElement(book, resource, resourceId, resourceIdValue);
				} else {
					return null;
				}
			} catch (Exception e) {
				return null;
			}

		}
		return null;
	}

	private <T> Map<String, T> loadExcelFile(Workbook book, Class<T> resource, String resourceId) {
		try {
			Sheet sheet = book.getSheetAt(0);
			Row attrnameRow = sheet.getRow(0);
			if (attrnameRow == null) {
				return null;
			}
			String resourceIdValue = null;
			Map<String, T> resources = new HashMap<>();
			for (int i = sheet.getFirstRowNum() + 2; i <= sheet.getPhysicalNumberOfRows(); i++) {
				Row dataRow = sheet.getRow(i);
				if (dataRow == null) {
					continue;
				}
				T resourceObject = resource.newInstance();
				for (int j = dataRow.getFirstCellNum(); j <= dataRow.getLastCellNum(); j++) {
					Cell dataCell = dataRow.getCell(j);
					if (dataCell == null) {
						continue;
					}
					ResourceLoader.setAttr(resourceObject, attrnameRow.getCell(j).toString(), getRealValue(dataCell));
					if (resourceId.equals(attrnameRow.getCell(j).toString())) {
						resourceIdValue = getRealValue(dataCell);
						if (resources.containsKey(resourceIdValue)) {
							return null;
						}
						resources.put(resourceIdValue, resourceObject);
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
		} finally {
			if (book != null) {
				try {
					book.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

	private <T> T loadExcelElement(Workbook book, Class<T> resource, String resourceId, String resourceIdValue) {
		try {
			Sheet sheet = book.getSheetAt(0);
			Row attrnameRow = sheet.getRow(0);
			if (attrnameRow == null) {
				return null;
			}
			int idIndex = -1;
			for (int i = attrnameRow.getFirstCellNum(); i <= attrnameRow.getLastCellNum(); i++) {
				Cell attrNameCell = attrnameRow.getCell(i);
				if (attrNameCell.toString().equals(resourceId)) {
					idIndex = i;
					break;
				}
			}
			if (idIndex == -1) {
				return null;
			}

			for (int i = sheet.getFirstRowNum() + 2; i <= sheet.getPhysicalNumberOfRows(); i++) {
				Row dataRow = sheet.getRow(i);
				if (dataRow == null) {
					continue;
				}
				if (!getRealValue(dataRow.getCell(idIndex)).equals(resourceIdValue)) {
					continue;
				}
				T resourceObject = resource.newInstance();
				for (int j = dataRow.getFirstCellNum(); j <= dataRow.getLastCellNum(); j++) {
					Cell dataCell = dataRow.getCell(j);
					if (dataCell == null) {
						continue;
					}
					ResourceLoader.setAttr(resourceObject, attrnameRow.getCell(j).toString(), getRealValue(dataCell));
				}
				return resourceObject;
			}
			book.close();
			return null;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} finally {
			if (book != null) {
				try {
					book.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

	@SuppressWarnings("deprecation")
	private String getRealValue(Cell cell) {
		String real = cell.toString();
		if (cell.getCellType() == CellType.NUMERIC.getCode()) {
			if (real.endsWith(".0")) {
				real = real.substring(0, real.lastIndexOf(".0"));
			}
		}
		return real;
	}

	@Override
	public List<Map<String, String>> loadResource(String fileName) {
		if (!fileName.endsWith(".xls") && !fileName.endsWith(".xlsx")) {
			return null;
		}
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
			return null;
		}
		int dotIndex = fileName.lastIndexOf(".");
		if (dotIndex != -1) {
			Workbook book = null;
			String extension = fileName.substring(dotIndex + 1);
			try {
				if (FileUtil.EXCEL03.equals(extension)) {
					book = new HSSFWorkbook(new FileInputStream(file));
					return loadExcelDatas(book);
				} else if (FileUtil.EXCEL07.equals(extension)) {
					book = new XSSFWorkbook(new FileInputStream(file));
					return loadExcelDatas(book);
				} else {
					return null;
				}
			} catch (Exception e) {
				return null;
			}

		}
		return null;
	}

	private List<Map<String, String>> loadExcelDatas(Workbook book) {
		try {
			Sheet sheet = book.getSheetAt(0);
			Row attrnameRow = sheet.getRow(0);
			if (attrnameRow == null) {
				return null;
			}
			List<Map<String, String>> datas = new ArrayList<>();
			for (int i = sheet.getFirstRowNum() + 2; i <= sheet.getPhysicalNumberOfRows(); i++) {
				Row dataRow = sheet.getRow(i);
				if (dataRow == null) {
					continue;
				}
				Map<String, String> data = new HashMap<>();
				for (int j = dataRow.getFirstCellNum(); j <= dataRow.getLastCellNum(); j++) {
					Cell dataCell = dataRow.getCell(j);
					if (dataCell == null) {
						continue;
					}
					data.put(attrnameRow.getCell(j).toString(), getRealValue(dataCell));
				}
				datas.add(data);
			}
			book.close();
			return datas;
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (book != null) {
				try {
					book.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		return null;
	}

}
