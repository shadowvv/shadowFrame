package com.shadowFrame.data.template.writer;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;

import com.shadowFrame.data.template.base.IResourceWriter;

public class JsonResourceWriter implements IResourceWriter {

	static String JSON_ROOT = "root";

	@Override
	public void writeResource(String resourceName, String targetDir, List<Map<String, String>> datas) {
		if (resourceName == null) {
			return;
		}
		if (targetDir == null) {
			return;
		}
		String name = targetDir + File.separatorChar + resourceName + ".json";
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
		JSONObject root = new JSONObject();
		JSONArray jsonDatas = new JSONArray();
		for (Map<String, String> data : datas) {
			JSONObject jsonData = new JSONObject(data);
			jsonDatas.put(jsonData);
		}
		root.put(JSON_ROOT, jsonDatas);
		return root.toString();
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
		new JsonResourceWriter().writeResource("test", "d:/resource", datas);
	}

}
