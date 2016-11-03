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

import com.shadowFrame.data.template.base.IResourceWriter;

/**
 * 导出为csv格式资源
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class CsvResourceWriter implements IResourceWriter {

	@Override
	public void writeResource(String resourceName, String targetDir, List<Map<String, String>> datas) {
		if (resourceName == null) {
			return;
		}
		if (targetDir == null) {
			return;
		}
		String name = targetDir + File.separator + resourceName + ".csv";
		File file = new File(name);
		if (file.exists()) {
			file.delete();
		}
		file.getParentFile().mkdirs();
		try {
			file.createNewFile();
			FileOutputStream output = new FileOutputStream(file);
			output.write(getFileContent(datas).getBytes());
			output.flush();
			output.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private String getFileContent(List<Map<String, String>> datas) {
		StringBuilder content = new StringBuilder();
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

		for (String field : fieldName) {
			content.append(field);
			content.append(",");
		}
		content.deleteCharAt(content.length() - 1);
		content.append("\n");
		for (Map<String, String> data : realDatas) {
			for (String field : fieldName) {
				content.append(data.get(field));
				content.append(",");
			}
			content.deleteCharAt(content.length() - 1);
			content.append("\n");
		}
		content.deleteCharAt(content.length() - 1);
		return content.toString();
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
		new CsvResourceWriter().writeResource("test", "d:/resource", datas);
	}

}
