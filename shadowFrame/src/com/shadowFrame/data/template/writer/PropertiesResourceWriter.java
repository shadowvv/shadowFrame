package com.shadowFrame.data.template.writer;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.google.common.base.Strings;
import com.shadowFrame.data.template.base.IResourceWriter;
import com.shadowFrame.util.PreconditionUtil;

/**
 * 属性格式资源导出器
 * <p>
 * 文件样式参考resource目录下propertiesSmaple.cfg
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class PropertiesResourceWriter implements IResourceWriter {

	@Override
	public void writeResource(String resourceName, String targetDir, List<Map<String, String>> datas) {
		PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(resourceName), "argument resourceName is null or empty");
		PreconditionUtil.checkArgument(!Strings.isNullOrEmpty(targetDir), "argument targetDir is null or empty");
		PreconditionUtil.checkArgument(datas != null, "argument datas is null");
		PreconditionUtil.checkArgument(datas.size() != 1, "argument datas's size is not 1");

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
			ResourceWriterLogger.writeSuccess(name);
		} catch (IOException e) {
			ResourceWriterLogger.writeResourceException(name, e.getMessage());
		}
	}

	private String getFileContent(List<Map<String, String>> datas) {
		Map<String, String> data = datas.get(0);
		StringBuilder content = new StringBuilder();
		for (String field : data.keySet()) {
			content.append(field + " = " + data.get(field) + "\n\n");
		}
		return content.toString();
	}

}
