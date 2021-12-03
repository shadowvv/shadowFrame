package com.shadowFrame.data.template.loader;

import com.google.common.base.Strings;
import com.shadowFrame.data.template.base.ResourceFmt;
import com.shadowFrame.util.FileUtil;
import com.shadowFrame.util.PreconditionUtil;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
public class ExcelResourceLoader extends BaseResourceLoader {

    /**
     * excel07 文件格式
     */
    static String EXCEL07 = "xlsx";
    /**
     * excel03 文件格式
     */
    static String EXCEL03 = "xls";

    @Override
    public <T> Map<String, T> loadResources(Class<T> resource, String fileName, String resourceId) {
        PreconditionUtil.checkArgument(resource != null, "argument resource is null");
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(fileName), "argument fileName is null or empty");
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(resourceId), "argument resourceId is null or empty");

        File file = checkFileFormat(resource, fileName, resourceId);
        int dotIndex = fileName.lastIndexOf(".");
        if (dotIndex != -1) {
            Workbook book = null;
            String extension = fileName.substring(dotIndex + 1);
            try {
                if (EXCEL03.equals(extension)) {
                    book = new HSSFWorkbook(new FileInputStream(file));
                    return loadExcelFile(book, fileName, resource, resourceId);
                } else if (EXCEL07.equals(extension)) {
                    book = new XSSFWorkbook(new FileInputStream(file));
                    return loadExcelFile(book, fileName, resource, resourceId);
                } else {
                    PreconditionUtil.checkState(false, fileName + " is not excel file");
                }
            } catch (Exception e) {
                PreconditionUtil.checkState(false, "load " + fileName + " catch exception " + e.getMessage());
            }

        }
        PreconditionUtil.checkState(false, fileName + " is not excel file");
        return null;
    }

    @Override
    public <T> T loadResource(Class<T> resource, String fileName, String resourceId, String resourceIdValue) {
        PreconditionUtil.checkArgument(resource != null, "argument resource is null");
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(fileName), "argument fileName is null or empty");
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(resourceId), "argument resourceId is null or empty");
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(resourceIdValue),
                "argument resourceIdValue is null or empty");

        File file = checkFileFormat(resource, fileName, resourceId);
        int dotIndex = fileName.lastIndexOf(".");
        if (dotIndex != -1) {
            Workbook book = null;
            String extension = fileName.substring(dotIndex + 1);
            try {
                if (EXCEL03.equals(extension)) {
                    book = new HSSFWorkbook(new FileInputStream(file));
                    return loadExcelElement(book, fileName, resource, resourceId, resourceIdValue);
                } else if (EXCEL07.equals(extension)) {
                    book = new XSSFWorkbook(new FileInputStream(file));
                    return loadExcelElement(book, fileName, resource, resourceId, resourceIdValue);
                } else {
                    PreconditionUtil.checkState(false, fileName + " is not excel file");
                }
            } catch (Exception e) {
                PreconditionUtil.checkState(false, "load " + fileName + " catch exception " + e.getMessage());
            }

        }
        PreconditionUtil.checkState(false, fileName + " is not excel file");
        return null;
    }

    @Override
    public List<Map<String, String>> loadResource(String fileName) {
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(fileName), "argument fileName is null or empty");

        File file = FileUtil.getExistFile(fileName);
        int dotIndex = fileName.lastIndexOf(".");
        if (dotIndex != -1) {
            Workbook book = null;
            String extension = fileName.substring(dotIndex + 1);
            try {
                if (EXCEL03.equals(extension)) {
                    book = new HSSFWorkbook(new FileInputStream(file));
                    return loadExcelDatas(book, fileName);
                } else if (EXCEL07.equals(extension)) {
                    book = new XSSFWorkbook(new FileInputStream(file));
                    return loadExcelDatas(book, fileName);
                } else {
                    PreconditionUtil.checkState(false, fileName + " is not excel file");
                }
            } catch (Exception e) {
                PreconditionUtil.checkState(false, "load " + fileName + " catch exception " + e.getMessage());
            }
        }
        PreconditionUtil.checkState(false, fileName + " is not excel file");
        return null;
    }

    private <T> Map<String, T> loadExcelFile(Workbook book, String fileName, Class<T> resource, String resourceId) {
        try {
            Sheet sheet = book.getSheetAt(0);
            Row attrnameRow = sheet.getRow(0);

            PreconditionUtil.checkState(attrnameRow != null, fileName + " is not contain segment data");

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
                    setAttr(resourceObject, attrnameRow.getCell(j).toString(), getRealValue(dataCell));
                    if (resourceId.equals(attrnameRow.getCell(j).toString())) {
                        resourceIdValue = getRealValue(dataCell);

                        PreconditionUtil.checkState(!resources.containsKey(resourceIdValue),
                                fileName + " contain duplicate id:" + resourceIdValue);

                        resources.put(resourceIdValue, resourceObject);
                    }
                }
            }
            book.close();
            ResourceLoaderLogger.loadSuccess(resource.getSimpleName(), fileName);
            return resources;
        } catch (Exception e) {
            ResourceLoaderLogger.loadResourceException(fileName, e.getMessage());
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

            PreconditionUtil.checkState(attrnameRow != null, fileName + " is not contain segment data");

            int idIndex = -1;
            for (int i = attrnameRow.getFirstCellNum(); i <= attrnameRow.getLastCellNum(); i++) {
                Cell attrNameCell = attrnameRow.getCell(i);
                if (attrNameCell.toString().equals(resourceId)) {
                    idIndex = i;
                    break;
                }
            }

            PreconditionUtil.checkState(idIndex != -1,
                    resource.getSimpleName() + " class is not contain segment " + resourceId);

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
                    setAttr(resourceObject, attrnameRow.getCell(j).toString(), getRealValue(dataCell));
                }
                ResourceLoaderLogger.loadSuccess(resource.getSimpleName(), fileName, resourceIdValue);
                return resourceObject;
            }
            book.close();
            ResourceLoaderLogger.resourceNotContainIdValue(fileName, resourceIdValue);
            return null;
        } catch (Exception e) {
            ResourceLoaderLogger.loadResourceException(fileName, e.getMessage());
        } finally {
            if (book != null) {
                try {
                    book.close();
                } catch (IOException e) {
                    ResourceLoaderLogger.loadResourceException(fileName, e.getMessage());
                }
            }
        }
        ResourceLoaderLogger.resourceNotContainIdValue(fileName, resourceIdValue);
        return null;
    }

    private List<Map<String, String>> loadExcelDatas(Workbook book, String fileName) {
        try {
            Sheet sheet = book.getSheetAt(0);
            Row attrnameRow = sheet.getRow(0);

            PreconditionUtil.checkState(attrnameRow != null, fileName + " is not contain segment data");

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
            ResourceLoaderLogger.loadSuccess(fileName);
            return datas;
        } catch (Exception e) {
            ResourceLoaderLogger.loadResourceException(fileName, e.getMessage());
        } finally {
            if (book != null) {
                try {
                    book.close();
                } catch (IOException e) {
                    ResourceLoaderLogger.loadResourceException(fileName, e.getMessage());
                }
            }
        }
        return null;
    }

    @SuppressWarnings("deprecation")
    private String getRealValue(Cell cell) {
        String real = cell.toString();
        if (cell.getCellType().equals(CellType.NUMERIC)) {
            if (real.endsWith(".0")) {
                real = real.substring(0, real.lastIndexOf(".0"));
            }
        }
        return real;
    }

    @Override
    public ResourceFmt getResourceFmt() {
        return ResourceFmt.EXCEL_RES;
    }

}
