package com.shadowFrame.data.template.writer;

import com.google.common.base.Strings;
import com.shadowFrame.data.template.base.IResourceWriter;
import com.shadowFrame.util.PreconditionUtil;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.*;

/**
 * excel格式资源导出器
 * <p>
 * 文件样式参考resource目录下excelSmaple.xls
 *
 * @author Shadow
 * @version 1.0.0
 */
public class ExcelResourceWriter implements IResourceWriter {

    @Override
    public void writeResource(String resourceName, String targetDir, List<Map<String, String>> datas) {
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(resourceName), "argument resourceName is null or empty");
        PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(targetDir), "argument targetDir is null or empty");
        PreconditionUtil.checkArgument(datas != null, "argument datas is null");

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
            ResourceWriterLogger.writeSuccess(name);
        } catch (IOException e) {
            ResourceWriterLogger.writeResourceException(name, e.getMessage());
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

}
