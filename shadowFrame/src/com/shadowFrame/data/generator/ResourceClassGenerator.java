package com.shadowFrame.data.generator;

import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.shadowFrame.data.template.loader.ResourceLoader;

/**
 * 资源映射类生成器
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class ResourceClassGenerator {

	private GeneratorCfg cfg;

	public ResourceClassGenerator() {
		cfg = ResourceLoader.getInstance().loadTemplate(GeneratorCfg.class).get(GeneratorCfg.class.getName());
	}

	public void generateClass() {
		if (cfg.getFromFormat().equals(".xls") || cfg.getFromFormat().equals(".xlsx")) {
			generateFromExcel();
		} else {

		}
	}

	private void generateFromExcel() {
		File dir = new File(cfg.getResourceDir());
		if (dir == null || !dir.isDirectory()) {
			return;
		}
		File[] files = dir.listFiles(new FileFilter() {

			@Override
			public boolean accept(File file) {
				if (file.isFile() && file.getName().endsWith(cfg.getFromFormat())) {
					return true;
				}
				return false;
			}
		});

		for (File file : files) {
			if (cfg.getFromFormat().equals(".xls")) {
				generateFromExcelXls(file);
			} else if (cfg.getFromFormat().equals(".xlsx")) {
				generateFromExcelXlsx(file);
			}
		}
	}

	private void generateFromExcelXls(File file) {
		try {
			HSSFWorkbook book = new HSSFWorkbook(new FileInputStream(file));
			generateFromExcel(book);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private void generateFromExcelXlsx(File file) {
		try {
			XSSFWorkbook book = new XSSFWorkbook(new FileInputStream(file));
			generateFromExcel(book);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private void generateFromExcel(Workbook book){
		
	}
}
