package com.shadowFrame.data.template.loader;

import java.io.File;
import java.io.FileInputStream;
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
import com.shadowFrame.data.template.ResourceLogger;
import com.shadowFrame.data.template.base.IResourceLoader;
import com.shadowFrame.log.ShadowLogger;
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
		return loadResourcesWithResourceId(resource, ResourceLoader.getIdFieldName(resource));
	}

	@Override
	public <T> Map<String, T> loadResourcesWithResourceId(Class<T> resource, String resourceId) {
		ExcelResource resAnnotation = getAnnotation(resource);
		if (resAnnotation == null) {
			return null;
		}
		return loadResources(resource, resAnnotation.fileName(), resourceId);
	}

	@Override
	public <T> Map<String, T> loadResourcesFromFile(Class<T> resource, String fileName) {
		return loadResources(resource, fileName, ResourceLoader.getIdFieldName(resource));
	}

	@Override
	public <T> Map<String, T> loadResources(Class<T> resource, String fileName, String resourceId) {
		File file = checkFileFormat(resource, fileName, resourceId);
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
					return loadExcelFile(book, fileName, resource, resourceId);
				} else if (FileUtil.EXCEL07.equals(extension)) {
					book = new XSSFWorkbook(new FileInputStream(file));
					return loadExcelFile(book, fileName, resource, resourceId);
				} else {
					ShadowLogger.errorPrintln(fileName + " is not excel file");
					return null;
				}
			} catch (Exception e) {
				ResourceLogger.loadResourceException(fileName, e.getMessage());
				return null;
			}

		}
		return null;
	}

	@Override
	public <T> T loadResource(Class<T> resource, String resourceIdValue) {
		return loadResourceWithResourceId(resource, ResourceLoader.getIdFieldName(resource), resourceIdValue);
	}

	@Override
	public <T> T loadResourceWithResourceId(Class<T> resource, String resourceId, String resourceIdValue) {
		ExcelResource resAnnotation = getAnnotation(resource);
		if (resAnnotation == null) {
			return null;
		}
		return loadResource(resource, resAnnotation.fileName(), resourceId, resourceIdValue);
	}

	@Override
	public <T> T loadResourceFromFile(Class<T> resource, String fileName, String resourceIdValue) {
		return loadResource(resource, fileName, ResourceLoader.getIdFieldName(resource), resourceIdValue);
	}

	@Override
	public <T> T loadResource(Class<T> resource, String fileName, String resourceId, String resourceIdValue) {
		File file = checkFileFormat(resource, fileName, resourceId);
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
					return loadExcelElement(book, fileName, resource, resourceId, resourceIdValue);
				} else if (FileUtil.EXCEL07.equals(extension)) {
					book = new XSSFWorkbook(new FileInputStream(file));
					return loadExcelElement(book, fileName, resource, resourceId, resourceIdValue);
				} else {
					ShadowLogger.errorPrintln(fileName + " is not excel file");
					return null;
				}
			} catch (Exception e) {
				ResourceLogger.loadResourceException(fileName, e.getMessage());
				return null;
			}

		}
		return null;
	}

	@Override
	public List<Map<String, String>> loadResource(String fileName) {
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
			ResourceLogger.resourceNotExist(fileName);
			return null;
		}
		int dotIndex = fileName.lastIndexOf(".");
		if (dotIndex != -1) {
			Workbook book = null;
			String extension = fileName.substring(dotIndex + 1);
			try {
				if (FileUtil.EXCEL03.equals(extension)) {
					book = new HSSFWorkbook(new FileInputStream(file));
					return loadExcelDatas(book, fileName);
				} else if (FileUtil.EXCEL07.equals(extension)) {
					book = new XSSFWorkbook(new FileInputStream(file));
					return loadExcelDatas(book, fileName);
				} else {
					ShadowLogger.errorPrintln(fileName + " is not excel file");
					return null;
				}
			} catch (Exception e) {
				ResourceLogger.loadResourceException(fileName, e.getMessage());
				return null;
			}

		}
		return null;
	}

	private <T> Map<String, T> loadExcelFile(Workbook book, String fileName, Class<T> resource, String resourceId) {
		try {
			Sheet sheet = book.getSheetAt(0);
			Row attrnameRow = sheet.getRow(0);
			if (attrnameRow == null) {
				ResourceLogger.resourceNotContainSegments(fileName);
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
							ResourceLogger.resourceContainDeplicateId(fileName, resourceIdValue);
							return null;
						}
						resources.put(resourceIdValue, resourceObject);
					}
				}
			}
			book.close();
			ResourceLogger.loadSuccess(resource.getSimpleName(), fileName);
			return resources;
		} catch (Exception e) {
			ResourceLogger.loadResourceException(fileName, e.getMessage());
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

	private <T> T loadExcelElement(Workbook book, String fileName, Class<T> resource, String resourceId,
			String resourceIdValue) {
		try {
			Sheet sheet = book.getSheetAt(0);
			Row attrnameRow = sheet.getRow(0);
			if (attrnameRow == null) {
				ResourceLogger.resourceNotContainSegments(fileName);
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
				ResourceLogger.resourceClassNotContainResourceId(resource.getSimpleName(), resourceId);
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
				ResourceLogger.loadSuccess(resource.getSimpleName(), fileName, resourceIdValue);
				return resourceObject;
			}
			book.close();
			ResourceLogger.resourceNotContainIdValue(fileName, resourceIdValue);
			return null;
		} catch (Exception e) {
			ResourceLogger.loadResourceException(fileName, e.getMessage());
		} finally {
			if (book != null) {
				try {
					book.close();
				} catch (IOException e) {
					ResourceLogger.loadResourceException(fileName, e.getMessage());
				}
			}
		}
		ResourceLogger.resourceNotContainIdValue(fileName, resourceIdValue);
		return null;
	}

	private List<Map<String, String>> loadExcelDatas(Workbook book, String fileName) {
		try {
			Sheet sheet = book.getSheetAt(0);
			Row attrnameRow = sheet.getRow(0);
			if (attrnameRow == null) {
				ResourceLogger.resourceNotContainSegments(fileName);
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
			ResourceLogger.loadSuccess(fileName);
			return datas;
		} catch (Exception e) {
			ResourceLogger.loadResourceException(fileName, e.getMessage());
		} finally {
			if (book != null) {
				try {
					book.close();
				} catch (IOException e) {
					ResourceLogger.loadResourceException(fileName, e.getMessage());
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

	private File checkFileFormat(Class<?> resource, String fileName, String resourceId) {
		File file = FileUtil.getExistFile(fileName);
		if (file == null) {
			ResourceLogger.resourceNotExist(resource.getSimpleName(), fileName);
			return null;
		}
		if (!ClassUtil.isContainField(resource, resourceId)) {
			ResourceLogger.resourceClassNotContainResourceId(resource.getSimpleName(), resourceId);
			return null;
		}
		return file;
	}

	private ExcelResource getAnnotation(Class<?> resource) {
		ExcelResource resAnnotation = resource.getAnnotation(ExcelResource.class);
		if (resAnnotation == null) {
			ResourceLogger.annotationError(resource.getSimpleName(), ExcelResource.class.getSimpleName());
			return null;
		}
		if (resAnnotation.loader() != ExcelResourceLoader.class) {
			ResourceLogger.annotationLoaderError(resource.getSimpleName(), ExcelResourceLoader.class.getSimpleName());
			return null;
		}
		return resAnnotation;
	}

}
