package com.shadowFrame.data.template.writer;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import com.shadowFrame.data.template.base.IResourceWriter;

public class PropertiesResourceWriter implements IResourceWriter {

	@Override
	public void writeResource(String resourceName, String targetDir, List<Map<String, String>> datas) {
		if (resourceName == null) {
			return;
		}
		if (targetDir == null) {
			return;
		}
		String name = targetDir + File.separatorChar + resourceName + ".cfg";
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
		if (datas.size() != 1) {
			return null;
		}
		Map<String, String> data = datas.get(0);
		StringBuilder content = new StringBuilder();
		for (String field : data.keySet()) {
			content.append(field + " = " + data.get(field) + "\n\n");
		}
		return content.toString();
	}

	public static void main(String[] args) {
		List<Map<String, String>> datas = new LinkedList<>();
		Map<String, String> data = new LinkedHashMap<>();
		data.put("id", "1_id");
		data.put("min", "1");
		datas.add(data);
		new PropertiesResourceWriter().writeResource("test", "d:/resource", datas);
	}

}
