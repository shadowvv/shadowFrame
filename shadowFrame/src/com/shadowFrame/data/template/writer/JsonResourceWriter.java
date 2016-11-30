package com.shadowFrame.data.template.writer;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;

import com.google.common.base.Strings;
import com.shadowFrame.data.template.base.IResourceWriter;
import com.shadowFrame.util.PreconditionUtil;

/**
 * json格式资源导出器
 * <p>
 * 文件样式参考resource目录下jsonSmaple.json
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class JsonResourceWriter implements IResourceWriter {

	static String JSON_ROOT = "root";

	@Override
	public void writeResource(String resourceName, String targetDir, List<Map<String, String>> datas) {	
		PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(resourceName), "argument resourceName is null or empty");
		PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(targetDir), "argument targetDir is null or empty");
		PreconditionUtil.checkArgument(datas != null, "argument datas is null");
		
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
			ResourceWriterLogger.writeSuccess(name);
		} catch (IOException e) {
			ResourceWriterLogger.writeResourceException(name, e.getMessage());
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

}
