package com.shadowFrame.data.template.writer;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.dom4j.io.XMLWriter;

import com.shadowFrame.data.template.base.IResourceWriter;

/**
 * xml格式资源导出器
 * <p>
 * 文件样式参考resource目录下xmlSmaple.xml
 * 
 * @author Shadow
 * @version 1.0.0
 */
public class XmlResourceWriter implements IResourceWriter {

	@Override
	public void writeResource(String resourceName, String targetDir, List<Map<String, String>> datas) {
		if (resourceName == null) {
			return;
		}
		if (targetDir == null) {
			return;
		}
		String name = targetDir + File.separatorChar + resourceName + ".xml";
		File file = new File(name);
		if (file.exists()) {
			file.delete();
		}
		file.getParentFile().mkdirs();
		try {
			file.createNewFile();
			FileOutputStream output = new FileOutputStream(file);
			XMLWriter writer = new XMLWriter(output);
			writer.write(getFileContent(datas));
			writer.close();
			output.flush();
			output.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private Document getFileContent(List<Map<String, String>> datas) {
		Document doc = DocumentHelper.createDocument();
		doc.setXMLEncoding("UTF-8");
		Element root = DocumentHelper.createElement("root");
		doc.setRootElement(root);
		for (Map<String, String> data : datas) {
			Element xmlData = DocumentHelper.createElement("element");
			for (String field : data.keySet()) {
				xmlData.addAttribute(field, data.get(field));
			}
			root.add(xmlData);
		}
		return doc;
	}

}
